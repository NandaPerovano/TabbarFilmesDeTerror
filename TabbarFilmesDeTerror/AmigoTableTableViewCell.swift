//
//  AmigoTableTableViewCell.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 15/05/22.
//

import UIKit

class AmigoTableTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imagemAmigo: UIImageView!
    @IBOutlet weak var nomeAmigoLabel: UILabel!

func customizarCelulaAmigo(imagem: UIImage?, nome: String) {
    imagemAmigo.image = imagem
    nomeAmigoLabel.text = nome
}
    
}
