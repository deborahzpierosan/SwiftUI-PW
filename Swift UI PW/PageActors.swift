//
//  PageActors.swift
//  Swift UI PW
//
//  Created by Deborah Pierosan on 27/10/23.
//

import SwiftUI

struct PageActors: View {
    var actor: [Actor] = [
        Actor(nome: "Cho Yeo-jeong", biography: "Cho Yeo-jeong (조여정) é uma atriz sul-coreana. Nascida em 10 de fevereiro de 1981, ela começou sua carreira como modelo em 1997 aos 16 anos e lançou sua carreira de atriz dois anos depois. Ela é mais conhecida por seus papéis nos provocantes filmes de período The Servant (2010) e The Concubine (2012) e nos dramas de televisão I Need Romance (2011), Haeundae Lovers (2012), Divorce Advogado Apaixonado (2015) e Perfect Wife (2017).", foto: "cho", portfolioMovie: "Parasita, The Concubine, Haeundae Lovers, I Need Romance"),
        Actor(nome: "Choi Woo-shik", biography: "Choi Woo-shik (Korean: 최우식; born March 26, 1990) is a Korean–Canadian actor. He first gained widespread recognition for his role in the film Set Me Free (2014). He then co-starred in the films Train to Busan (2016) and Parasite (2019), both of which received international critical acclaim and success, the latter of which won the Palme d'Or at Cannes and the Academy Award for Best Picture.", foto: "choi", portfolioMovie: "Parasite, Train to Busan, Okja, Invasão Zumbi")
        
    ]
    
    var body: some View {
        VStack{
            HStack{
                Text("Actors")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Spacer()
            }
            
            List(actor, id: \.nome){actor in
                ActorRow(actor: actor)
            }
            .listRowSeparator(.hidden)
            .listStyle(.plain)
        }
    }
        }

#Preview {
    PageActors()
}
