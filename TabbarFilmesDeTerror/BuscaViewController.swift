//
//  BuscaViewController.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 14/05/22.
//

import UIKit

class BuscaViewController: UIViewController {

    @IBOutlet weak var buscaTableView: UITableView!

  
    
    var slasher:[String] = ["Sexta Feira 13", "Brinquedo Assassino", "Hallween", "A Hora do Peasdelo", "O Massacre da Serra Elétrica", "Pânico"]
    var thriller:[String] = ["A Órfã", "Psicose"]
    var sobrenatural:[String] = ["A Bruxa de Blair", "O Chamado", "Navio Fantasma", "A Freira",  "It: a Coisa"]
    var psicológico:[String] = ["O Iluminado", "O Silêncio dos Inocentes"]
    var gore:[String] = ["Jogos Mortais", "A Babá", "Escolha ou Morra", "Doce Vingança"]
    var ficçãoCientífica:[String] = ["Escape Room"]
    
    var caracteres:[String] = ["slasher", "thriller", "sobrenatural", "psicológico", "gore", "ficção cientíca"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        buscaTableView.dataSource = self
        buscaTableView.delegate = self
    }
}

extension BuscaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 { return slasher.count }
        if section == 1 { return thriller.count }
        if section == 2 { return sobrenatural.count }
        if section == 3 { return psicológico.count }
        if section == 4 { return gore.count }
        if section == 5{ return ficçãoCientífica.count }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "detalhesFilmes" {
//           //if let indexPath = tableView.indexPathForSelectedRow {
//          //  let filme = FilmesDeTerrorCollectionViewCell
//
//
//        }
//    }
}

extension BuscaViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return caracteres.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 { return "Terror Slasher"}
        if section == 1 { return "Terror Thriller"}
        if section == 2 { return "Terror Sobrenatural"}
        if section == 3 { return "Terror Psicológico"}
        if section == 4 { return "Terror Gore"}
        if section == 5 { return "Terror Ficção Científica"}
        return nil
    }
}
