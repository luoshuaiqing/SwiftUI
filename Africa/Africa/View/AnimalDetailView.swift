//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20, content: {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                InsetGalleryView(animal: animal)
                    .padding(.horizontal)
                
                HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                InsetFactView(animal: animal)
                    .padding(.horizontal)
                
                HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                Text(animal.description)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                HeadingView(headingImage: "map", headingText: "National Parks")
            })
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("Data/animals.json")
    return NavigationView {
        AnimalDetailView(animal: animals[0])
    }
}
