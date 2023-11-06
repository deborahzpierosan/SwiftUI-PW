//
//  MovieRow.swift
//  Swift UI PW
//
//  Created by Deborah Pierosan on 27/10/23.
//

import SwiftUI

struct MovieViewRow: View {
            @StateObject var movie: Movie
            
            var body: some View {
                HStack {
                    Image(movie.image)
                        .resizable()
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .frame(maxWidth: 80)
                    
                    VStack (alignment:.leading) {
                        Text(movie.title)
                            .font(.subheadline)
                            .bold( )
                            .foregroundStyle(.black)
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.leading)
                        
                        Text(movie.description)
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                            .font(.system(size:14))
                        
                        HStack{
                            Image(systemName: "star")
                                .resizable()
                                .frame(width:16, height:16)
                                .foregroundColor(.gray)
                            Text(movie.rating)
                                .foregroundStyle(.gray)
                                .padding(.bottom,5)
                                .font(.system(size:16))
                            Spacer()
                            Image(systemName: movie.liked ? "heart.fill" : "heart").renderingMode(.original)
                        }
                    }
                }
            }
        }

