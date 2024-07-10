//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/10/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("Data/animals.json")
    return AnimalGridItemView(animal: animals[0])
}
