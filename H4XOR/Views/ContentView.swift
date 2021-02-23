//
//  ContentView.swift
//  H4XOR
//
//  Created by Yassin Nawar on 12/25/20.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject  var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            
            List(networkManager.posts)
            {   post in
                
                NavigationLink(
                    destination: DetailView(url:post.url))
                {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
                
            }
            
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




