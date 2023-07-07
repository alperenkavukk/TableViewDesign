//
//  TableViewCell.swift
//  TableViewDesign
//
//  Created by Alperen Kavuk on 7.07.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var izinSayısıLbl: UILabel!
    @IBOutlet weak var meslekLbl: UILabel!
    @IBOutlet weak var yearlbl: UILabel!
    @IBOutlet weak var cinsiyetLbl: UILabel!
    @IBOutlet weak var adSoyadLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        adSoyadLbl.numberOfLines = 0
        cinsiyetLbl.numberOfLines = 0
        yearlbl.numberOfLines = 0
        meslekLbl.numberOfLines = 0
        izinSayısıLbl.numberOfLines = 0
            
                
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .top
        stackView.distribution = .fill
        stackView.spacing = 15
        
               
        stackView.addArrangedSubview(adSoyadLbl)
        stackView.addArrangedSubview(cinsiyetLbl)
        stackView.addArrangedSubview(yearlbl)
        stackView.addArrangedSubview(meslekLbl)
        stackView.addArrangedSubview(izinSayısıLbl)
        contentView.addSubview(stackView)
                
               
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            //adSoyadLbl.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.5, constant: -10)
                ])
            }
    }

