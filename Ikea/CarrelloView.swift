//
//  CarrelloView.swift
//  Ikea
//
//  Created by Giuseppe Grammatico on 30/06/2021.
//

import SwiftUI

struct CarrelloView: View {
    var body: some View {
        NavigationView{
        VStack{
        Text("Vuoto")
            .font(.title3)
            .bold()
            
    }
        .navigationBarTitle("Carrello")
    }
        
    }
}

struct CarrelloView_Previews: PreviewProvider {
    static var previews: some View {
        CarrelloView()
    }
}
