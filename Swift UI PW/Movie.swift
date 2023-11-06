//
//  Movie.swift
//  Swift UI PW
//
//  Created by Deborah Pierosan on 27/10/23.
//

import SwiftUI

class Movie : ObservableObject {
            var title: String
            var description: String
            var image: String
            var rating: String
            @Published var liked: Bool = false
            
    init(title: String, description: String, image: String, rating: String) {
        self.title = title
        self.description = description
        self.image = image
        self.rating = rating
    }
}
