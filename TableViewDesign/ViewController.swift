//
//  ViewController.swift
//  TableViewDesign
//
//  Created by Alperen Kavuk on 7.07.2023.
//

import UIKit

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var isimArray = ["AlperenKavukKavuk","Alperen","alper","Alperen Kavuk","Alperen Kavuk Alperen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        tableView.dataSource = self
        tableView.delegate = self
        
       
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 50
        
       
        tableView.reloadData()
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        
        cell.adSoyadLbl.text = isimArray[indexPath.row]
        cell.yearlbl.text = "Yaş:30"
        cell.cinsiyetLbl.text =  "Erkek"
        cell.izinSayısıLbl.text = "İzinS:30"
        cell.meslekLbl.text = "Yazılım"
       
        
        
        return cell
    }
}

