//
//  MapViewWithAnnotations.swift
//  RigaVeganMap
//
//  Created by Kristaps Grinbergs on 11/07/2020.
//

import SwiftUI
import MapKit

struct MapViewWithAnnotations: View {
  let veganPlacesInRiga = [
    VeganFoodPlace(name: "Kozy Eats", latitude: 56.951924, longitude: 24.125584),
    VeganFoodPlace(name: "Green Pumpkin", latitude: 56.967520, longitude: 24.105760),
    VeganFoodPlace(name: "Terapija", latitude: 56.9539906, longitude: 24.13649290000000)
  ]
  
  @State var coordinateRegion = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 56.948889, longitude: 24.106389),
    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
  
  var body: some View {
    Map(coordinateRegion: $coordinateRegion,
        annotationItems: veganPlacesInRiga) { place in
      MapMarker(coordinate: place.coordinate, tint: .green)
    }.edgesIgnoringSafeArea(.all)
  }
}

struct MapViewWithAnnotations_Previews: PreviewProvider {
  static var previews: some View {
    MapViewWithAnnotations()
  }
}
