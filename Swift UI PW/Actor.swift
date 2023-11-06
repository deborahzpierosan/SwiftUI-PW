//
//  Actor.swift
//  Swift UI PW
//
//  Created by Deborah Pierosan on 27/10/23.
//

import SwiftUI

class Actor {
    var nome: String
    var biography: String
    var foto: String
    var portfolioMovie: String
    
    init(nome: String, biography: String, foto: String, portfolioMovie: String) {
        self.nome = nome
        self.biography = biography
        self.foto = foto
        self.portfolioMovie = portfolioMovie
    }
}
