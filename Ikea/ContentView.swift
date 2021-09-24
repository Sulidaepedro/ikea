//
//  ContentView.swift
//  Ikea
//
//  Created by Giuseppe Grammatico on 30/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView(product: Product.mocks())
               .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "house")
                   }
            SearchView(product2: Product2.mocks())
                .tabItem {
                    Image(systemName: "bag")
                    }
            CarrelloView()
                .tabItem {
                    Image(systemName: "cart")
                    }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
            
    }
}



