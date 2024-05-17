//
//  AppError.swift
//  Landmarks
//
//  Created by Arman Morshed on 17/5/24.
//

import Foundation

enum AppError: Error {
  case fileNotFound
  case decodingError
  case unknown

  var errorMessage: String {
    switch self {
    case .fileNotFound:
      "File not found"
    case .decodingError:
      "Decoding Error"
    case .unknown:
      "Unknown"
    }
  }
}
