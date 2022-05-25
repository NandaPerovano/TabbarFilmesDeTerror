//
//  DetalheAmigoCollectionViewCell.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 22/05/22.
//

import UIKit

class DetalheAmigoCollectionViewCell: UICollectionViewCell {

  
    @IBOutlet weak var imagemFilme: UIImageView!
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    
    func customizarCelula(imagem: UIImage?, nome: String) {
        imagemFilme.image = imagem
        nomeFilmeLabel.text = nome
    }
}
