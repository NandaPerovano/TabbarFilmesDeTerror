//
//  AmigoDetalhesViewController.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 22/05/22.
//

import UIKit

class AmigoDetalhesViewController: UIViewController {
    
    @IBOutlet weak var amigoImagem: UIImageView!
    @IBOutlet weak var nomeAmigoLabel: UILabel!
    @IBOutlet weak var quantidadeDeFilmesEmComumLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var cinema = Filmesfavoritos()
    var filme = Humano(imagem: UIImage(named: "panicoImagem"), nome: "Joao")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        amigoImagem.image = filme.imagem
        nomeAmigoLabel.text = filme.nome
    }
    
}

extension AmigoDetalhesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cinema.fernandaMontenegro.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollectionFilmes", for: indexPath) as? AmigoDetalhesViewControllerCell {
            let listaDeFilmes =  cinema.fernandaMontenegro[indexPath.row]
            cell.customizarCelula(imagem: listaDeFilmes.imagem, nome: listaDeFilmes.nome)
            return cell
        }
        return UICollectionViewCell()
        
    }
}
