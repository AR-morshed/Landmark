//
//  Landmark.swift
//  Landmarks
//
//  Created by Arman Morshed on 17/5/24.
//

import Foundation

struct Landmark: Decodable, Identifiable {
  let name: String
  let id: Int
  let subtitle: String
  let imageName: String
}
