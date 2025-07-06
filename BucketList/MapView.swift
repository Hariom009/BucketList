//
//  MapView.swift
//  BucketList
//
//  Created by Hari's Mac on 26.06.2025.
//

import SwiftUI
import MapKit
struct Location:Identifiable{
    let id = UUID()
    var name: String
    var coordinates: CLLocationCoordinate2D
}
struct MapView: View {
    let locations = [
        Location(name: "Bunckingham Palace", coordinates: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)),
        Location(name: "Tower of London", coordinates: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
    ]
    var body: some View {
        VStack{
//            Map{
//                ForEach(locations){ location in
//                    //Marker(location.name,coordinate: location.coordinates)
//                    Annotation(location.name, coordinate: location.coordinates){
//                        Text(location.name)
//                            .font(.title)
//                            .fontWeight(.bold)
//                            .clipShape(.capsule)
//                            
//                    }
//                    .annotationTitles(.hidden)
//                }
//            }
            MapReader { proxy in
                Map()
                    .onTapGesture { position in
                        if let coordinate = proxy.convert(position, from: .local){
                            print(coordinate)
                        }
                    }
            }
        }
    }
}

#Preview {
    MapView()
}
