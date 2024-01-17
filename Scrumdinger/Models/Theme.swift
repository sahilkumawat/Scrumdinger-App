//
//  Theme.swift
//  Scrumdinger
//
//  Created by Sahil Kumawat on 12/22/23.
//
import SwiftUI


enum Theme: String, CaseIterable, Identifiable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    
    var mainColor: Color {
        return Color(rawValue)
        /*switch self {
        case .yellow:
            return .yellow
        case .orange:
            return .orange
        case .teal:
            return .teal
        default:
            return .white*/
    }
    
    var name: String {
        rawValue.capitalized
    }
    
    var id: String {
        name
    }
}
