//
//  ViewController.swift
//  Alura Viagens
//
//  Created by Fernanda Abreu on 31/10/22.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var viewPacotes: UIView!
    
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var tabelaViagens: UITableView!
    let listViagens : Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
        self.tabelaViagens.delegate = self
        self.viewPacotes.layer.cornerRadius = 10
        self.viewHoteis.layer.cornerRadius=10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listViagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let viagemAtual = listViagens[indexPath.row]
        cell.labelTitulo.text = viagemAtual.titulo
        cell.labelQuantidadeDeDias.text = "\(viagemAtual.quantidadeDeDias) dias"
        cell.labelPreco.text = "R$ \(viagemAtual.preco)"
        cell.imagemViagem.image = UIImage(named: viagemAtual.caminhoDaImagem)
        cell.imagemViagem.layer.cornerRadius = 10
        cell.imagemViagem.layer.masksToBounds = true
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 175 : 260
    }


}

