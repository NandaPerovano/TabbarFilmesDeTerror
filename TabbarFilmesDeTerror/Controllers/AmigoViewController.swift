//
//  AmigoViewController.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 15/05/22.
//

import UIKit

class AmigoViewController: UIViewController {
    
    @IBOutlet weak var amigoTableView: UITableView!
    
    var amigos: [Humano] = [
        Humano(imagem: UIImage(named: "fernandaMontenegroImagem"), nome: "Fernanda Montenegro"),
        Humano(imagem: UIImage(named: "ellenPompeoImagem"), nome: "Ellen Pompeo"),
        Humano(imagem: UIImage(named: "cassiaKiss"), nome: "Cassia Kiss"),
        Humano(imagem: UIImage(named: "bradPittImagem"), nome: "Brad Pitt"),
        Humano(imagem: UIImage(named: "toniRamosImagem"), nome: "Toni Ramos")
    ]
    
    // MARK:  Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amigoTableView.dataSource = self
        amigoTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalhesAmigosSegue" {
            if let indexPath = amigoTableView.indexPathForSelectedRow {
                let filmeSelecionado = amigos[indexPath.row]
                let viewControllerDestino = segue.destination as! AmigoDetalhesViewController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }
}

extension AmigoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        amigos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = amigoTableView.dequeueReusableCell(withIdentifier: "cellAmigo", for: indexPath) as? AmigoTableViewCell {
            let listaDeAmigos =  amigos[indexPath.row]
            cell.customizarAmigo(imagem: listaDeAmigos.imagem, nome: listaDeAmigos.nome)
            return cell
        }
        return UITableViewCell()
    }
}
// MARK: Methods

extension AmigoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detalhesAmigosSegue", sender: amigos[indexPath.row])
    }
}
