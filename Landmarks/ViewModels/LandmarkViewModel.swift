//
//  LandmarkViewModel.swift
//  Landmarks
//
//  Created by Arman Morshed on 17/5/24.
//

import Observation
import SwiftUI

@Observable
class LandmarkViewModel {
  var landmarks: [Landmark] = []
  let service: Service
  var error: AppError?
  var showingAlert = false

  init() {
    self.service = FileService()
  }

  func onAppear() async {
    do {
      let url = try await service.loadJson(
        fileName: Constant.jsonFileName, ext: "json")
      let landmarks: [Landmark] = try await service.requestJson(url: url)

      await MainActor.run {
        self.landmarks = landmarks
      }

    } catch let error {
      self.error = error as? AppError
        self.showingAlert = true
    }
  }
}
