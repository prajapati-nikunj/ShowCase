//
//  PlanetView.swift
//  Sample
//
//  Created by Nikunj on 10/16/23.
//

import SwiftUI
struct Planet: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
}
struct PlanetItem: View {
    let planet: Planet
    
    var body: some View {
        HStack() {
            ZStack (alignment: .bottomTrailing) {
                Image(planet.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 300)
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.6))
            }
            Spacer()
            VStack {
                Spacer()
               
                Text(planet.name)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.descText)
            }
           
        }
        .frame(width: 300, height: 200)
        .foregroundColor(.white)
        .padding()
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 7)
    }
}
struct PlanetView: View {
    let planets: [Planet] = [
        Planet(name: "Sun", imageName: "sun"),
        Planet(name: "Mercury", imageName: "mercury"),
        Planet(name: "Venus", imageName: "venus"),
        Planet(name: "Earth", imageName: "earth"),
        Planet(name: "Mars", imageName: "mars"),
        Planet(name: "Jupiter", imageName: "jupiter"),
        Planet(name: "Saturn", imageName: "saturn"),
        Planet(name: "Uranus", imageName: "uranus"),
        Planet(name: "Neptune", imageName: "neptune"),
        Planet(name: "Pluto", imageName: "pluto"),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(planets) { planet in
                    PlanetItem(planet: planet)
                }
            }
            .padding()
            
        }
    }
}

#Preview {
    PlanetView()
}
