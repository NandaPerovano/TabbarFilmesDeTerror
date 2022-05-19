//
//  BuscaTableViewCell.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 15/05/22.
//

import UIKit

class BuscaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    
func customizaCell(nome: String) {
    nomeFilmeLabel.text = nome
}
}
