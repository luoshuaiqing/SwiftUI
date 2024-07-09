//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/9/24.
//

import SwiftUI

struct MapAnnotationView: View {
    
    let location: NationalParkLocation
    
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.accent)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + animation)
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(.circle)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

#Preview {
    let locations: [NationalParkLocation] = Bundle.main.decode("Data/locations.json")
    return MapAnnotationView(location: locations[0])
}
