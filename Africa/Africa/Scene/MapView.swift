//
//  MapView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        let mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        let mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70)
        let mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("Data/locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // Approach 1:
            // MapMarker(coordinate: item.location, tint: .accent)
            
            // Approach 2:
            /*
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
             */
            
            // Approach 3:
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }
    }
}

#Preview {
    MapView()
}
