//
//  AppTheme.swift
//  HealthTracker
//
//  Created by Arjun Dubey on 02/09/25.
//

import SwiftUI

enum AppColors {
    // Background gradients (safe defaults; replace with asset colors when added)
 
    static let backgroundGradientStart = Color(red: 0.0, green: 0.2, blue: 0.4) // Deep Blue
        static let backgroundGradientEnd = Color(red: 0.0, green: 0.6, blue: 0.5)   // Teal
    

    

    // Primary text
    static let textPrimary = Color.white
    static let textSecondary = Color.white.opacity(0.85)

    // Accent color for buttons, icons, highlights
    static let accent = Color.accentColor

    // Optional subtle UI colors
    static let cardBackground = Color.white.opacity(0.1)
    static let borderColor = Color.white.opacity(0.2)
}


enum AppFonts {
    // App-wide presets
    static let title = Font.system(size: 48, weight: .bold, design: .rounded)
    static let subtitle = Font.system(size: 20, weight: .medium, design: .rounded)
    static let body = Font.system(size: 16, weight: .regular, design: .rounded)
    static let caption = Font.system(size: 14, weight: .regular, design: .rounded)

}


