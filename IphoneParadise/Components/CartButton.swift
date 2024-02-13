//
//  CartButton.swift
//  IphoneParadise
//
//  Created by Vanshit Aggarwal on 11/02/24.
//

import SwiftUI

struct CartButton: View {
    var numbeOfProducts:Int
    var body: some View {
        ZStack(alignment:.topTrailing){
            Image(systemName: "cart")
                .padding(.top,5)
            if numbeOfProducts > 0{
                Text("\(numbeOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(Color(hue:1.0,saturation: 0.89,brightness: 0.836))
                    .cornerRadius(50)
            }
        }
    }
}
    
    struct CartButton_Previews: PreviewProvider {
        static var previews: some View {
            CartButton(numbeOfProducts: 1)
        }
    }

