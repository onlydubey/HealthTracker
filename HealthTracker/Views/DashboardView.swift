//
//  DashboardView.swift
//  HealthTracker
//
//  Created by Arjun Dubey on 02/09/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        TabView {
            DashboardHomeView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Dashboard")
                }

            ActivityView()
                .tabItem {
                    Image(systemName: "figure.walk")
                    Text("Activity")
                }

            NutritionView()
                .tabItem {
                    Image(systemName: "leaf")
                    Text("Nutrition")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
        .tint(AppColors.accent)
    }
}

private struct DashboardHomeView: View {
    var body: some View {
            VStack(spacing: 12) {
                Text("Today")
                    .font(AppFonts.title)
                Text("Your daily snapshot will appear here.")
                    .font(AppFonts.body)
            }
        }
    }

#Preview {
    DashboardView()
}


