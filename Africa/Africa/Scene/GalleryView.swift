//
//  GalleryView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct GalleryView: View {
    
    let animals: [Animal] = Bundle.main.decode("Data/animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var selectedAnimal: String = "lion"
    @State private var gridLayout: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
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
            
            Slider(value: $gridColumn, in: 2...4, step: 1)
                .padding(.horizontal)
                .onChange(of: gridColumn) { oldValue, newValue in
                    gridSwitch()
                }
            
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
                                haptics.impactOccurred()
                            }
                    }
                }
                .animation(.easeIn, value: UUID())
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
            .onAppear {
                // Note: w/o this code, MotionAnimationView will lose its animation because we are using .animation(x, value: UUID()) instead of .animation(x, value: isAnimating)
                gridSwitch()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
