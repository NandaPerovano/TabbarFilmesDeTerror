//
//  Filmes.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 14/05/22.
//

import Foundation
import UIKit

class Filme {

    var imagem: UIImage?
    var nome: String
    var ano: Int
    var descricao: String
    var maiorDeIdade: Bool
 
    init(imagem: UIImage?, nome: String, ano: Int, descricao: String, maiorDeIdade: Bool = false) {
        self.imagem = imagem
        self.nome =  nome
        self.ano = ano
        self.descricao = descricao
        self.maiorDeIdade = maiorDeIdade
    }
}
