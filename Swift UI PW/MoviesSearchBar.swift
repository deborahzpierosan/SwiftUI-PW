//
//  MoviesSearchBar.swift
//  Swift UI PW
//
//  Created by Foundation09 on 08/11/23.
//

import SwiftUI

struct MoviesSearchBar: View {
    @Binding var text: String
    var body: some View {
        HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Pesquisar", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(.horizontal)
    }
}

