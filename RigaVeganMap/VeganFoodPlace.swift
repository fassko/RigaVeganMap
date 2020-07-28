//
//  VeganFoodPlace.swift
//  RigaVeganMap
//
//  Created by Kristaps Grinbergs on 27/07/2020.
//

import Foundation
import MapKit

struct VeganFoodPlace: Identifiable {
  var id = UUID()
  let name: String
  let latitude: Double
  let longitude: Double
  
  var coordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}
