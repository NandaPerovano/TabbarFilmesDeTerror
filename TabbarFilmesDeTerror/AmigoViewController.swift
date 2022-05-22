//
//  AmigoViewController.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 15/05/22.
//

import UIKit

class AmigoViewController: UIViewController {
    
    // MARK: Properties
    
    //@IBOutlet weak var amigoTableView: UITableView!
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
        //amigoTableView.dataSource = self
        //amigoTableView.delegate = self
    }

// MARK: Methods
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if segue.identifier == "amigoDetalhesSegue" {
//            if let indexPath = amigoTableView.indexPathForSelectedRow {
//                let filmeSelecionado = amigos[indexPath.row]
//                let viewControllerDestino = segue.destination as! TestedeVisualizacao
//                //viewControllerDestino.filme = filmeSelecionado
//            }
//        }
//    }
//
//}
//
//
//// MARK:  Extensions
//
//extension AmigoViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return amigos.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellAmigo") as? AmigoTableTableViewCell {
//            let listaAmigos = amigos[indexPath.row]
//            cell.customizarCelulaAmigo(imagem: listaAmigos.imagem, nome: listaAmigos.nome)
//            return cell
//        }
//        return UITableViewCell()
//    }
//
//}
//
//extension AmigoViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "amigoDetalhesSegue", sender: amigos[indexPath.row])
//    }
//}
