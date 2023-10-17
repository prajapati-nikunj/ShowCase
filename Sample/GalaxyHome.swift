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
                        
                        HeadView(title: "Mission", subtitle: "Moon")
                        
                        HeadView(title: "Mission", subtitle: "Mars")
                        
                        HeadView(title: "Mission", subtitle: "By ISRO")
                        
                        HeadView(title: "Mission", subtitle: "By NASA")
                        
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
struct HeadView: View {
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack {
            Image("sun")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
            
            HStack() {
                TextTile(title: title, subtitle: subtitle)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.descText)
                    .font(.title3)
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.black.opacity(0.3))
        
    }
}

struct TextTile: View {
    var title: String
    var subtitle: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.descText)
            Text(subtitle)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.descText)
        }
    }
}
