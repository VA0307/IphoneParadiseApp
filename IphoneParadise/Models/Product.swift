//
//  Product.swift
//  IphoneParadise
//
//  Created by Vanshit Aggarwal on 11/02/24.
//

import Foundation

struct Product : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var price : Int
    
}
var productList = [Product(name: "Iphone 14", image:"14" , price: 60000),
                   Product(name: "Iphone 14 plus", image: "14plus", price: 75000),
                   Product(name: "Iphone 14pro", image: "14pro", price: 90000),
                   Product(name: "IPhone 15", image: "15", price: 95000),
                   Product(name: "Iphone 15 plus", image: "15plus", price: 99000),
                   Product(name: "IPhone 15pro", image: "15pro", price: 110000),
                   Product(name: "Iphone 15pro max", image: "15promax", price: 130000),
                   Product(name: "IPhone 14pro max", image: "14promax", price: 120000)
]

