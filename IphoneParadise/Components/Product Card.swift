//
//  Product Card.swift
//  IphoneParadise
//
//  Created by Vanshit Aggarwal on 11/02/24.
//

import SwiftUI

struct Product_Card: View {
    @EnvironmentObject var Cartmanager: CartManager
    var product : Product
    var body: some View {
        ZStack(alignment : .topTrailing){
            ZStack(alignment : .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    Text("Rs\(product.price)")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180,alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                
            }
            .frame(width: 180,height: 250)
        .shadow(radius: 3)
            Button{
                Cartmanager.addToCart(product: product)
            }label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct Product_Card_Previews: PreviewProvider {
    static var previews: some View {
        Product_Card(product: productList[0])
            .environmentObject(CartManager())
    }
}
