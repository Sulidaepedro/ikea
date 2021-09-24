//
//  SearchView.swift
//  Ikea
//
//  Created by Giuseppe Grammatico on 30/06/2021.
//

import SwiftUI

struct SearchView: View {
    
    init(product2: [Product2]) {
        self.product2 = product2
    }
    
    var product2: [Product2]
    
    
    var body: some View {
        VStack{
           
            ScrollView(){
                
                ForEach(product2, id: \.name, content: { product2 in
                    HStack{
                        
                 Image(uiImage: product2.image)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 120, height: 200)
                 
                    .padding(20)
                        Spacer()
                        VStack(alignment: .trailing){
                    Text(product2.name)
                    Text(product2.price)
                        .foregroundColor(.red)
                    }
                        .padding(.trailing, 70)
                        Button("\(Image(systemName: "cart"))",
                               action:{
                            
                               })
                            .frame(width: 40, height: 40)
                            .padding(EdgeInsets(
                                        top: 5,
                                   leading: 10,
                                     bottom: 5,
                                  trailing: 10))
                            .foregroundColor(.yellow)
                            .background(Color.blue)
                            .cornerRadius(100)
                        
                    }
                    .padding([.top, .bottom, .trailing], 14)
                    .background(Color.white)
                    .cornerRadius(20)
                    
            })
            }
        
    }
        .background(Color.gray)
        .edgesIgnoringSafeArea(.top)
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(product2: Product2.mocks())
    }
}
