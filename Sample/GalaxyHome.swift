//
//  GalaxyHome.swift
//  Sample
//
//  Created by Nikunj on 10/16/23.
//

import SwiftUI

struct GalaxyHome: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Image("HomeBG")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack() {
                    ScrollView() {
                        Spacer()
                        HStack() {
                        
                            TextTile(title: "Explore", subtitle: "Galaxy")
                            
                            Spacer()
                            
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.descText)
                                .font(.title)
                        }
                        .padding()
                        Divider()
                      
                        PlanetView()
                        
                        Spacer()
                        
                        HStack() {
                            TextTile(title: "Mission", subtitle: "Moon")
                            Spacer()
                        }
                        .padding()
                        HStack() {
                            TextTile(title: "Mission", subtitle: "Mars")
                            Spacer()
                        }
                        .padding()
                        HStack() {
                            TextTile(title: "Mission", subtitle: "By ISRO")
                            Spacer()
                        }
                        .padding()
                        HStack() {
                            TextTile(title: "Mission", subtitle: "By NASA")
                            Spacer()
                        }
                        .padding()
                        Spacer()
                        
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.3))
                    
                }
                .foregroundColor(.white)
                .background(Color.black.opacity(0.3))
                .navigationBarHidden(true)
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    GalaxyHome()
}

struct TextTile: View {
    var title: String
    var subtitle: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.descText)
            Text(subtitle)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.descText)
        }
    }
}
