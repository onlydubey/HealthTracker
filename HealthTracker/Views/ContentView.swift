//
//  ContentView.swift
//  HealthTracker
//
//  Created by Arjun Dubey on 02/09/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var splashViewModel = SplashViewModel()

    var body: some View {
        Group {
            if splashViewModel.isActive {
                SplashView(viewModel: splashViewModel)
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
