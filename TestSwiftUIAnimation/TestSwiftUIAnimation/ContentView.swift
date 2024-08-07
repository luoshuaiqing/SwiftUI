//
//  ContentView.swift
//  TestSwiftUIAnimation
//
//  Created by Shuaiqing Luo on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals: [Animal] = Bundle.main.decode("Data/animals.json")
        
        @State private var selectedAnimal: String = "lion"
        @State private var gridLayout: [GridItem] = []
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
                                }
                        }
                    }
    //                .animation(.easeIn, value: UUID())
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 50)
                .onAppear {
                    gridSwitch()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(MotionAnimationView())
        }
    }
}

#Preview {
    ContentView()
}
