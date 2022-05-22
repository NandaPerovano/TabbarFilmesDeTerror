//
//  AmigoTableViewCell.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 22/05/22.
//

import UIKit

class AmigoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagemAmigo: UIImageView!
    @IBOutlet weak var nomeAmigoLabel: UILabel!
    
    func customizarAmigo(imagem: UIImage?, nome: String) {
        imagemAmigo.image = imagem
        nomeAmigoLabel.text = nome
    }
}
