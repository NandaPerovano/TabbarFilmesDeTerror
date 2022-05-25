//
//  BuscaViewController.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 14/05/22.
//

import UIKit

class BuscaViewController: UIViewController {
    
    @IBOutlet weak var buscaTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var listaFilmes = Cinemateca()
    var filtraFilmes: [Filme] = []
    
    var galo: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buscaTableView.dataSource = self
        buscaTableView.delegate = self
        searchBar.delegate = self
        filtraFilmes = listaFilmes.addFilmes
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalhesFilmes" {
            if let indexPath = buscaTableView.indexPathForSelectedRow {
                let filmeSelecionado = filtraFilmes[indexPath.row]
                let viewControllerDestino = segue.destination as! FilmeDetalhesViewController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }
}

extension BuscaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtraFilmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellBusca", for: indexPath) as? BuscaTableViewCell  {
            let listaNomes = filtraFilmes[indexPath.row]
            cell.customizaCell(nome: listaNomes.nome)
            return cell
        }
        return UITableViewCell()
    }
}

extension BuscaViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detalhesFilmes", sender: listaFilmes.addFilmes[indexPath.row])
    }
}

extension BuscaViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filtraFilmes = []
        
        if searchText == "" {
            filtraFilmes = listaFilmes.addFilmes
        } else {
            for filme in listaFilmes.addFilmes {
                if filme.nome.contains(searchText) {
                    filtraFilmes.append(filme)
                }
            }
        }
        self.buscaTableView.reloadData()
    }
}


