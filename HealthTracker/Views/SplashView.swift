//
//  SplashView.swift
//  HealthTracker
//
//  Created by Arjun Dubey on 02/09/25.
//

import SwiftUI

struct SplashView: View {
    @ObservedObject var viewModel: SplashViewModel
    @State private var animateIn: Bool = false

    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                colors: [AppColors.backgroundGradientStart, AppColors.backgroundGradientEnd],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                // Optional logo placeholder
                Image(systemName: "figure.walk")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .foregroundColor(AppColors.textPrimary)
                    .padding(.top, 40)
                    .scaleEffect(animateIn ? 1.0 : 0.8)
                    .opacity(animateIn ? 1 : 0)
                    .accessibilityLabel("App logo")
                
                // App Title
                Text("Amrutam")
                    .font(AppFonts.title)
                    .foregroundColor(AppColors.textPrimary)
                    .opacity(animateIn ? 1 : 0)
                    .offset(y: animateIn ? 0 : 12)

                // Subtitle / Splash message
                Text("The Nectar of Wellness")
                    .font(AppFonts.subtitle)
                    .foregroundColor(AppColors.textSecondary)
                    .opacity(animateIn ? 1 : 0)
                    .offset(y: animateIn ? 0 : 12)

            }
            .multilineTextAlignment(.center)
        }
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                animateIn = true
            }
        }
    }
}

#Preview {
    SplashView(viewModel: SplashViewModel())
}
