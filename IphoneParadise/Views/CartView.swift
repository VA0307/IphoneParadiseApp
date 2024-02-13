//
//  CartView.swift
//  IphoneParadise
//
//  Created by Vanshit Aggarwal on 11/02/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var Cartmanager : CartManager
    var body: some View {
        ScrollView{
            if Cartmanager.products.count > 0{
                ForEach(Cartmanager.products,id: \.id) {
                product in
                    ProductRow(product:product)
                    
                }
                        HStack{
                    Text("Total Amount")
                            Spacer()
                            Text("Rs\(Cartmanager.total)")
                                .bold()
                    
                }
                        .padding()
                PaymentButton(action: {})
                    .padding()
            }else{
                Text("Your cart is empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
