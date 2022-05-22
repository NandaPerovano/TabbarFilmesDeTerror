//
//  HomeViewController.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 14/05/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var listagem = Cinemateca()
    
    @IBOutlet weak var filmesDeTerrorCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       filmesDeTerrorCollectionView.dataSource = self
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        listagem.addFilmes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = filmesDeTerrorCollectionView.dequeueReusableCell(withReuseIdentifier: "cellCollectionFilmes", for: indexPath) as? HomeCollectionViewCell {
            let listaDeFilmes = listagem.addFilmes[indexPath.row]
            cell.customizarCelula(imagem: listaDeFilmes.imagem, nome: listaDeFilmes.nome)
            return cell
    }
    return UICollectionViewCell()
}
}
