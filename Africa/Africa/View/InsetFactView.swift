//
//  InsetFactView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(idealHeight: 168)
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("Data/animals.json")
    return InsetFactView(animal: animals[0])
}
