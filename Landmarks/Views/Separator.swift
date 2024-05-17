//
//  Separator.swift
//  Landmarks
//
//  Created by Arman Morshed on 17/5/24.
//

import SwiftUI

public struct Separator: View {
  public init() {}

  public var body: some View {
    Rectangle()
      .foregroundStyle(.black.opacity(0.2))
      .frame(height: 1)
  }
}
