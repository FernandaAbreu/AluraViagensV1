//
//  Viagem.swift
//  Alura Viagens
//
//  Created by Fernanda Abreu on 03/11/22.
//

import UIKit

class Viagem : NSObject {
    let titulo:String
    let quantidadeDeDias: Int
    let preco: String
    let caminhoDaImagem : String
    init(titulo:String,quantidadeDeDias:Int,preco:String,caminhoDaImagrm:String){
        self.titulo=titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.caminhoDaImagem = caminhoDaImagrm
        self.preco = preco
        
    }
}
