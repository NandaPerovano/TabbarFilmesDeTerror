//
//  FiltroViewController.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 15/05/22.
//

import UIKit

class FiltroViewController: UIViewController {
    
    @IBOutlet weak var maioridadeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var filtroCollectionView: UICollectionView!
    
    var listaFilmesFiltro:[Filme] = []
    var listaFilmes = Listagem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaFilmesFiltro = listaFilmes.addFilmes
        filtroCollectionView.dataSource = self
    }
    
    @IBAction func mudarFilmeMaioridadeAoclicarSegmented(_ sender: Any) {
        let index = maioridadeSegmentedControl.selectedSegmentIndex
        
        switch index {
        case 0 :
            listaFilmesFiltro = listaFilmes.addFilmes.filter { !$0.maiorDeIdade }
        case 1:
            listaFilmesFiltro = listaFilmes.addFilmes.filter { $0.maiorDeIdade }
        default:
            break
        }
        filtroCollectionView.reloadData()
    }
}


extension FiltroViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        listaFilmesFiltro.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = filtroCollectionView.dequeueReusableCell(withReuseIdentifier: "cellFiltro", for: indexPath) as? FiltroCollectionViewCell {
            let listaDeFilmes = listaFilmesFiltro[indexPath.row]
            cell.customizarFiltro(imagem: listaDeFilmes.imagem, nome: listaDeFilmes.nome)
            return cell
        }
        return UICollectionViewCell()
    }
}
