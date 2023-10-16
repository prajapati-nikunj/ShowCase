//
//  ContentView.swift
//  Sample
//
//  Created by Nikunj on 10/16/23.
//


import SwiftUI

struct ContentView: View {
    @State private var isHomeActive: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("galaxy")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Text("Explore !")
                        .font(.largeTitle)
                        .fontWeight(.black)
                    Button(action: {
                        isHomeActive = true
                    }) {
                        Text("Let's Begin")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.6))
                            .cornerRadius(10)
                    }
                }
            }.navigationDestination(isPresented: $isHomeActive) {
                GalaxyHome()
            }
        }
    }
}

#Preview {
    ContentView()
}


