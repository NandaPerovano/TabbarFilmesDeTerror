//
//  FilmeDetalhesViewController.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 21/05/22.
//

import UIKit

class FilmeDetalhesViewController: UIViewController {
    
    var filme: Filme!
    
    @IBOutlet weak var imagemFilme: UIImageView!
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    @IBOutlet weak var anoFilmeLabel: UILabel!
    @IBOutlet weak var descricaoFilmeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemFilme.image = filme.imagem
        nomeFilmeLabel.text = filme.nome
        anoFilmeLabel.text = String(filme.ano)
        descricaoFilmeLabel.text = filme.descricao
    }
    
}
