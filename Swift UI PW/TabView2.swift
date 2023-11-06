//
//  TabView2.swift
//  Swift UI PW
//
//  Created by Deborah Pierosan on 27/10/23.
//

import SwiftUI

struct TabView2 : View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Movies", systemImage: "movieclapper.fill")
                }
            PageActors()
                .tabItem {
                    Label("Actos", systemImage:"person.crop.rectangle.stack.fill")
                }
        }
    }
}

#Preview {
    TabView2()
}
