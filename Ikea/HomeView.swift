//
//  HomeView.swift
//  Ikea
//
//  Created by Giuseppe Grammatico on 30/06/2021.
//

import SwiftUI

struct HomeView: View {
    
    init(product: [Product]) {
        self.product = product
    }
    
    var product: [Product]
    
    var body: some View {
        ScrollView{
        VStack(alignment: .center){
            ZStack{
            Image(uiImage: #imageLiteral(resourceName: "home"))
            .resizable()
            .aspectRatio(contentMode: .fit)
           // .frame(width: 450, height: 450)
            Image(uiImage: #imageLiteral(resourceName: "ikea"))
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 80)
                .cornerRadius(10)
            }
            Text("Express yourself")
                .font(Font.custom("BestChoiceDemo-Regular", size: 33))
                
            
                ScrollView(.horizontal){
                    HStack{
                    ForEach(product, id: \.name, content: { product in
                    VStack{
                     Image(uiImage: product.image)
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 150, height: 200)
                     .shadow(radius: 10)
                     .padding()
                        Text(product.name)
                        Text(product.price)
                            .foregroundColor(.red)
                    }
                })
        }
            }
        Text("")
            Text("")
            Text("")
            Spacer()
                  }
        }
                }
            }
    


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(product: Product.mocks())
            .ignoresSafeArea()
    }
}
