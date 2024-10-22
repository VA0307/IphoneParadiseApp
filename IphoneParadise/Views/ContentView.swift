//
//  ContentView.swift
//  IphoneParadise
//
//  Created by Vanshit Aggarwal on 11/02/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns : columns,spacing: 20) {
                    ForEach(productList,id : \.id){ Product in
                        Product_Card(product: Product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Iphone Paradise"))
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                    
                }label : {
                    CartButton(numbeOfProducts: cartManager.products.count)
                }
        
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
