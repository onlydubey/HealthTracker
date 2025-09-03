//
//  OnboardingView.swift
//  HealthTracker
//
//  Created by Arjun Dubey on 03/09/25.
//

import SwiftUI

struct OnboardingView: View {
    @State private var animateIn = false
    
    var body: some View {
        VStack(spacing: 24) {
            // Logo placeholder
            Image("SplashLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundColor(.green)
                .padding(.top, 60)
                .scaleEffect(animateIn ? 1.0 : 0.8)
                .opacity(animateIn ? 1 : 0)
                .animation(.easeOut(duration: 0.8), value: animateIn)
            
            // App Title
            Text("Amrutam")
                .font(.system(size: 36, weight: .bold))
                .foregroundColor(.primary)
                .opacity(animateIn ? 1 : 0)
                .offset(y: animateIn ? 0 : 20)
                .animation(.easeOut(duration: 1.0).delay(0.2), value: animateIn)
            
            // Tagline
            Text("The Nectar of Wellness")
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .opacity(animateIn ? 1 : 0)
                .offset(y: animateIn ? 0 : 20)
                .animation(.easeOut(duration: 1.0).delay(0.4), value: animateIn)
            
            Spacer()
            
            // Get Started Button
            Button(action: {
                print("Get Started tapped")
                // Later: navigate to SignInView or HomeView
            }) {
                Text("Get Started")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(radius: 4)
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 60)
            .opacity(animateIn ? 1 : 0)
            .offset(y: animateIn ? 0 : 40)
            .animation(.easeOut(duration: 1.0).delay(0.6), value: animateIn)
        }
        .onAppear {
            animateIn = true
        }
    }
}

#Preview {
    OnboardingView()
}
