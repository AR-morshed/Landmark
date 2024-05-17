//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Arman Morshed on 17/5/24.
//

import SwiftUI

struct LandmarkRow: View {
  let landmark: Landmark

  var body: some View {
    VStack {
      HStack {
        Image(landmark.imageName, bundle: .main)
          .resizable()
          .frame(width: 56, height: 56)
          .clipShape(Circle())

        VStack(alignment: .leading) {
          Text(landmark.name)
            .font(.title)
            .fontWeight(.medium)

          Text(landmark.subtitle)
            .font(.title2)
            .fontWeight(.regular)
        }

        Spacer()
      }
      .padding(16)

      Separator()
    }
  }
}
