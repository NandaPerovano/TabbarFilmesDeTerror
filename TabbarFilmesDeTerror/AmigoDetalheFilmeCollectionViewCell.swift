//
//  AmigoDetalheFilmeCollectionViewCell.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 22/05/22.
//

import UIKit


class AmigoDetalhesViewControllerCell: UICollectionViewCell {
    
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    
    func customizarCelula(imagem: UIImage?, nome: String) {
        nomeFilmeLabel.text = nome
    }
}
