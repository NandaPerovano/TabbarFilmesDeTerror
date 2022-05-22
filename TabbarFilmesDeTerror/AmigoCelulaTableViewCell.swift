//
//  AmigoCelulaTableViewCell.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 22/05/22.
//

import UIKit

class AmigoCelulaTableViewCell: UITableViewCell {
    
    
    

    @IBOutlet weak var imagemAmigo: UIImageView!
    @IBOutlet weak var nomeLabelAmigo: UILabel!
    
    func customizarAmigo(imagem: UIImage?, nome: String) {
        imagemAmigo.image = imagem
        nomeLabelAmigo.text = nome
    }
    }

