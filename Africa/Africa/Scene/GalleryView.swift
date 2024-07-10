//
//  GalleryView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct GalleryView: View {
    
    let animals: [Animal] = Bundle.main.decode("Data/animals.json")
    
    @State private var selectedAnimal: String = "lion"
    @State private var gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 1)
    @State private var gridColumn = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    var body: some View {
        ScrollView(.vertical) {
            
            Image(selectedAnimal)
                .resizable()
                .scaledToFit()
                .clipShape(.circle)
                .overlay(Circle().stroke(.white, lineWidth: 8))
            
            VStack(alignment: .center, spacing: 30) {
                LazyVGrid(columns: gridLayout) {
                    ForEach(animals) { animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = animal.image
                            }
                    }
                }
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
