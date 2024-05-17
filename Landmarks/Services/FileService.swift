//
//  FileService.swift
//  Landmarks
//
//  Created by Arman Morshed on 17/5/24.
//

import Foundation

protocol Service {
  func loadJson(fileName: String, ext: String) async throws -> URL
  func requestJson<T: Decodable>(url: URL) async throws -> [T]
}

struct FileService: Service {
  func loadJson(fileName: String, ext: String) async throws -> URL {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: ext)
    else {
      throw AppError.fileNotFound
    }

    return url
  }

  func requestJson<T: Decodable>(url: URL) async throws -> T {
    do {
      let data = try Data(contentsOf: url)
      let response = try JSONDecoder().decode(T.self, from: data)
      return response

    } catch {
      throw AppError.decodingError
    }
  }
}
