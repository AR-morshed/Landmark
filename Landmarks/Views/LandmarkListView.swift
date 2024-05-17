//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Arman Morshed on 17/5/24.
//

import SwiftUI

struct LandmarkListView: View {
  @State var landmarkViewModel = LandmarkViewModel()

  var body: some View {
    NavigationStack {
      ScrollView {
        VStack(alignment: .leading) {
          ForEach(landmarkViewModel.landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
          }
        }
      }
      .alert(
        "\(landmarkViewModel.error?.errorMessage ?? "")",
        isPresented: $landmarkViewModel.showingAlert
      ) {
        Button("OK", role: .cancel) {}
      }
      .navigationTitle("Landmarks")
      .task {
        await landmarkViewModel.onAppear()
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .ignoresSafeArea()
  }
}

#Preview {
  LandmarkListView()
}
