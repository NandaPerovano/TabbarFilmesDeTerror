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
    
    var filmesMaioridade:[Filme] = [
        Filme(imagem: UIImage(named: "panicoImagem"), nome: "Pânico", ano: 1996, descricao: "Sidney relaciona a morte de dois estudantes com a de sua mãe, há cerca de um ano, por um maníaco na cidade"),
        Filme(imagem: UIImage(named: "sextaFeiraImagem"), nome: "Sexta Feira 13", ano: 1980, descricao: "Um assassiono mata dois jovens em um acampamento. Após reaberto, monitores começam a desaparecer mortos por um maníaco"),
        Filme(imagem: UIImage(named: "oiluminadoImagem"), nome: "O Iluminado", ano: 1980, descricao: "Um ex-professor é contratado para cuidar de um Hotel por 5 meses com seu filho com poderes espirituais e sua esposa."),
        Filme(imagem: UIImage(named: "jogosMortaisImagem"), nome: "Jogos Mortais", ano: 2004, descricao: "Dois caras trancados em um banheiro são obrigados a jogar por suas vidas"),
        Filme(imagem: UIImage(named: "brinquedoAssassinoImagem"), nome: "Brinquedo Assassino", ano: 1988, descricao: "Um serial Killer antes de morrer utiliza vodu e transfere sua alma para um boneco"),
        Filme(imagem: UIImage(named: "halloweenImagem"), nome: "Halloween", ano: 2018,descricao: "Michael Myers percegue na noite de Halloween sua irmã após 4 décadas internado"),
        Filme(imagem: UIImage(named: "psicoseImagem"), nome: "Psicose", ano: 1960, descricao: "Após uma secretária roubar uma imobiliária, durante a fuga se hospeda em um hotel adiministrado por um sujeito perigoso"),
        Filme(imagem: UIImage(named: "bruxaDeBlairImagem"), nome: "A Bruxa de Blair", ano: 1999, descricao: "Três estudantes fazem um documentário sobre a lenda da bruxa de Blair e desaparecem após um ano uma pista surge sobre seu macabro destino"),
        Filme(imagem: UIImage(named: "itImagem"), nome: "It: A coisa", ano: 2017, descricao: "Em 1989, criança começam a desaparecer na cidadezinha de Derry. Liberado por bill, um grupo de amigos investiga o caso e descobre uma ligação com o maligno palhaço Pennywise"),
        Filme(imagem: UIImage(named: "oChamadoImagem"), nome: "O Chamado", ano: 2002, descricao: "Uma jornalista investiga a morte de sua sobrinha após assistir um vídeo exatamente 7 dias depois"),
        Filme(imagem: UIImage(named: "aFreiraImagem"), nome: "A Freira", ano: 2018, descricao: "Um padre e uma noviça são chamados para investigar a morte de uma irmã"),
        Filme(imagem: UIImage(named: "horaDoPesadeloImagem"), nome: "A Hora do Pesadelo", ano: 1984, descricao: "Durante o sono, um grupo de adolescentes é atacado por um homem deformado com garras de aço"),
        Filme(imagem: UIImage(named: "oSilencioDosInocentesImagem"), nome: "O Silêncio dos Inocentes", ano: 1991, descricao: "Para entender a mente de um assassino, uma agente do FBI procura o perigoso psicopata Hannibal Lecter"),
        Filme(imagem: UIImage(named: "aOrfaImagem"), nome: "A Orfã", ano: 2009, descricao: "Um casal adota uma criança. Estranhos acontecimentos fazem parte do histórico da menina"),
        Filme(imagem: UIImage(named: "navioFantasmaImagem"), nome: "Navio Fantasma", ano: 2002, descricao: "Uma equipe encontra os destroços de um naviodesaparecido há 40 anos em alto-mar"),
        Filme(imagem: UIImage(named: "doceVingancaImagem"), nome: "Doce Vingança", ano: 2010, descricao: "Uma jovem escritora planeja sua vingança após ser atacada por moradores locais "),
        Filme(imagem: UIImage(named: "massacreDaSerraEletricaImagem"), nome: "O Massacre da Serra Elétrica", ano: 1974, descricao: "Um grupo de amigos é atacado por um homem de máscara após um terrível massacre"),
        Filme(imagem: UIImage(named: "aBabaImagem"), nome: "A Babá", ano: 2017, descricao: "Um garoto descobre que sua babá é uma assassina adoradora do Diabo"),
        Filme(imagem: UIImage(named: "escolhaOuMorraImagem"), nome: "Escolha ou Morra", ano: 2022, descricao: "Uma estudante falida entra em uma jogo obscuro de computador"),
        Filme(imagem: UIImage(named: "escapeRoomImagem"), nome: "Escape Room", ano: 2019, descricao: "Seis estranhos são convidados para um experimento inusitado: trancados em uma sala enigmática")
    ]

    var filmesMenoresDeDezoito:[String] = ["Escape Room", "A Babá", "Navio Fantasma", "O Silêncio dos Inocentes", "A Hora do Pesadelo", "A Freira", "O Chamado","It: A coisa", "A Bruxa de Blair", "Psicose", "Halloween","Brinquedo Assassino", "Jogos Mortais", "O Iluminado", "Pânico"]
    
    var filmesMaioresOuIgualDezoito:[String] = ["Escolha ou Morra", "massacreDaSerraEletricaImagem", "Doce Vingança", "A órfã", "Sexta Feira 13"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        filtroCollectionView.dataSource = self
        //filtroCollectionView.delegate = self
      
        
    }
    
    @IBAction func mudarFilmeMaioridadeAoclicarSegmented(_ sender: Any) {
        let index = maioridadeSegmentedControl.selectedSegmentIndex
        
        switch index {
        case 0 :
            filmesMenoresDeDezoito
           filtroCollectionView.reloadData()
        case 1:
            filmesMaioresOuIgualDezoito
           filtroCollectionView.reloadData()
        default:
            break
        }
    }
    
}


extension FiltroViewController: UICollectionViewDataSource {
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    filmesMaioridade.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if let cell = filtroCollectionView.dequeueReusableCell(withReuseIdentifier: "cellFiltro", for: indexPath) as? FiltroCollectionViewCell {
        let listaDeFilmes = filmesMaioridade[indexPath.row]
        cell.customizarFiltro(imagem: listaDeFilmes.imagem, nome: listaDeFilmes.nome)
        return cell
}
return UICollectionViewCell()
}
}
