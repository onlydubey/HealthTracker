//
//  ContentView.swift
//  HealthTracker
//
//  Created by Arjun Dubey on 02/09/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var splashViewModel = SplashViewModel()
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding: Bool = false

    var body: some View {
        Group {
            if splashViewModel.isActive {
                SplashView(viewModel: splashViewModel)
            } else if !hasCompletedOnboarding {
                OnboardingView()
            } else {
                DashboardView()
            }
        }
        .onAppear {
            splashViewModel.start()
        }
    }
}

#Preview {
    ContentView()
}
