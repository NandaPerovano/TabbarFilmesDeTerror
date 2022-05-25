//
//  FiltroCollectionViewCell.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 15/05/22.
//

import UIKit

class FiltroCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagemFiltro: UIImageView!
    @IBOutlet weak var nomeFiltroLabel: UILabel!
    
    func customizarFiltro(imagem: UIImage?, nome: String) {
        imagemFiltro.image = imagem
        nomeFiltroLabel.text = nome
    }
}


