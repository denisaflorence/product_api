//
//  ProductModel.swift
//  product_swiftui
//
//  Created by Putu Denisa Florence Satriani on 01/03/23.
//

import Foundation

struct productResponse: Codable{
    let results: [Product]
}

struct Product: Codable, Identifiable{
    let id = UUID()
    let title: String
    let description: String
    let price: Int
    let thumbnail: String
  
}
