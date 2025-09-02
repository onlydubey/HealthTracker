//
//  SplashViewModel.swift
//  HealthTracker
//
//  Created by Assistant on 02/09/25.
//

import Foundation
import SwiftUI

@MainActor
final class SplashViewModel: ObservableObject {
    @Published var isActive: Bool = true

    private let minimumDisplayTime: TimeInterval

    init(minimumDisplayTime: TimeInterval = 1.2) {
        self.minimumDisplayTime = minimumDisplayTime
    }

    func start() {
        Task {
            try? await Task.sleep(nanoseconds: UInt64(minimumDisplayTime * 1_000_000_000))
            withAnimation(.easeInOut(duration: 0.35)) {
                isActive = false
            }
        }
    }
}



