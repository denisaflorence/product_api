//
//  ContentView.swift
//  product_swiftui
//
//  Created by Putu Denisa Florence Satriani on 01/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var products: [Product] = []
    var body: some View {
        NavigationView{
            ZStack{
                HStack {
                    List(products) {product in
                        NavigationLink(destination: DetailView()) {
                            Image(product.thumbnail)
                            VStack{
                                Text(product.title)
                                    .bold()
                                Text(product.description)
                                  }
                       
                        }
                    }
                    .onAppear {
                        apiCall().getProducts{ (products) in
                            self.products = products
                        }
                    }
                }
            }
            
        }.navigationTitle("List")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


