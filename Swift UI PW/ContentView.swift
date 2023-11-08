//
//  ContentView.swift
//  Swift UI PW
//
//  Created by Deborah Pierosan on 26/10/23.
//

import SwiftUI
    
struct ContentView: View {
    
    var movie: [Movie] = [
        Movie(title:"A Viagem de Chihiro", description: "Chihiro e seus pais estão se mudando para uma cidade diferente. A caminho da nova casa, o pai decide pegar um atalho. Eles se deparam com uma mesa repleta de comida, embora ninguém esteja por perto. Chihiro sente o perigo, mas seus pais começam a comer. Quando anoitece, eles se transformam em porcos. Agora, apenas Chihiro pode salvá-los", image: "chihiro", rating: "8.5"),
        Movie(title:"Princesa Mononoke",description: "Um príncipe infectado por uma doença sabe que irá morrer, a menos que encontre a cura. Sendo a sua última esperança, segue para o leste e, durante o caminho, encontra animais da floresta lutando contra a sua exploração, liderados pela princesa Mononoke.", image: "mononoke", rating: "8.3"),
        Movie(title: "Your Name", description: "Mitsuha é a filha do prefeito de uma pequena cidade, mas sonha em tentar a sorte em Tóquio. Taki trabalha em um restaurante em Tóquio e deseja largar o seu emprego. Os dois não se conhecem, mas estão conectados pelas imagens de seus sonhos.", image: "yourname", rating: "8.5"),
        Movie(title:"Parasita",description: "Toda a família de Ki-taek está desempregada, vivendo num porão sujo e apertado. Uma obra do acaso faz com que o filho adolescente da família comece a dar aulas de inglês à garota de uma família rica. Fascinados com a vida luxuosa destas pessoas, pai, mãe, filho e filha bolam um plano para se infiltrarem também na família burguesa, um a um. No entanto, os segredos e mentiras necessários à ascensão social custarão caro a todos.",image: "parasita", rating: "8.5"),
        Movie(title: "Meu Amigo Totoro", description: "Mei é uma jovem que encontra uma pequena passagem em seu quintal, que a leva à um lendário espírito da floresta conhecido como Totoro. Sua mãe está no hospital e seu pai divide o tempo entre dar aulas na faculdade e cuidar de sua mulher doente. Quando Mei tenta visitar a mãe por conta própria, se perde na floresta e só o grande e fofo Totoro pode ajudar a menina a achar o caminho de volta para casa.", image: "totoro", rating: "8.3")
    ]
    
    @Environment(\.dismiss) var dismiss
    @State var tap: Bool = false
    @State private var text: String = ""
    
    var filteredMovies: [Movie] {
        if text.isEmpty {
            return movie
        }else {
            return movie.filter({$0.title.lowercased().contains(text.lowercased())})
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                //            HStack {
                //                Text("MovieDB")
                //                    .font(.largeTitle)
                //                    .bold()
                //                    .padding(.leading)
                //                Spacer()
                //            }
                
                if text.isEmpty {
                    VStack {
                        HStack {
                            Text("Now Playing")
                                .font(.subheadline)
                                .bold()
                                .padding(.leading)
                            Spacer()
                        }
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 15) {
                                ForEach(movie, id:\.description){
                                    movie in
                                    
                                    VStack(){
                                        HStack() {
                                            Image(movie.image)
                                                .resizable()
                                                .scaledToFit()
                                                .cornerRadius(10)
                                                .frame(width: 150)
                                        }
                                        HStack {
                                            Text(movie.title)
                                                .bold()
                                                .font(.footnote)
                                            Spacer()
                                        }
                                        
                                        HStack{
                                            Image(systemName: "star")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 15)
                                                .foregroundColor(.gray)
                                            
                                            Text(movie.rating)
                                                .foregroundColor(.gray)
                                                .font(.subheadline)
                                                .baselineOffset(-1)
                                            Spacer()
                                        }
                                        
                                    }
                                    
                                    
                                    
                                }
                            }.padding()
                        }
                        
                    }
                    Spacer()
                }
            }
            HStack {
                Text("Popular Movies")
                    .font(.subheadline)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            List(filteredMovies, id: \.title){ movie in
                MovieViewRow(movie: movie)
                    .swipeActions(edge:.trailing,allowsFullSwipe: false){
                        Button {
                            movie.liked.toggle()
                        } label: {
                            Label("Favorite", systemImage: "heart")
                                .tint(.red)
                        }
                    }
                    .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
            
            .navigationTitle("MovieDB")
            .searchable(text: $text)
        }
    }
}





#Preview {
    ContentView()
}
