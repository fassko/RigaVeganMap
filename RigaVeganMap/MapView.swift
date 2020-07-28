//
//  MapView.swift
//  RigaVeganMap
//
//  Created by Kristaps Grinbergs on 11/07/2020.
//

import SwiftUI
import MapKit

struct MapView: View {
  @State var coordinateRegion = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 56.948889, longitude: 24.106389),
    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
  
  var body: some View {
    Map(coordinateRegion: $coordinateRegion)
      .edgesIgnoringSafeArea(.all)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}
