//
//  ProductViewModel.swift
//  product_swiftui
//
//  Created by Putu Denisa Florence Satriani on 01/03/23.
//

import Foundation
import SwiftUI

let configuration = URLSessionConfiguration.ephemeral
let session = URLSession(configuration: configuration)
@MainActor
class apiCall : ObservableObject{
//    @Published var products: [Product] = []
    
    func getProducts(completion:@escaping ([Product]) -> ()) {
        guard let url = URL(string: "https://dummyjson.com/products") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let products = try! JSONDecoder().decode([Product].self, from: data!)
            print(products)
            DispatchQueue.main.async {
                completion(products)
            }
        }
        .resume()
    }
    
 
        
    }




