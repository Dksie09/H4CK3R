//
//  ContentView.swift
//  H4CK3R News
//
//  Created by Dakshi Goel on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager: NetworkManager
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){
                post in
                
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .listSectionSeparator(.hidden)
            .navigationTitle("H4CK3R NEWS")
        }
        .contentMargins(0)
        
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView(networkManager: NetworkManager())
}
