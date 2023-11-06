//
//  ActorRow.swift
//  Swift UI PW
//
//  Created by Deborah Pierosan on 27/10/23.
//

import SwiftUI

struct ActorRow : View {
    var actor: Actor
    
    var body: some View {
        
            HStack {
                Image(actor.foto)
                    .resizable()
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(maxWidth: 80)
                  
                VStack (alignment:.leading) {
                    Text(actor.nome)
                        .font(.subheadline)
                        .bold( )
                        .foregroundStyle(.black)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Text(actor.biography)
                        .lineLimit(4)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .font(.system(size:15))
                        .padding(.leading)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "star")
                            .resizable()
                            .frame(width:16, height:16)
                            .foregroundColor(.gray)
                            .padding(.leading)
                        Text(actor.portfolioMovie)
                            .lineLimit(1)
                            .foregroundStyle(.gray)
                            .padding(.bottom,5)
                            .font(.system(size:16))
            
                    }
                }
            }
        }
    }

