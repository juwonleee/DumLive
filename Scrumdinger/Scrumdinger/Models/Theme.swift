//
//  Theme.swift
//  Scrumdinger
//
//  Created by apple on 2023/06/08.
//

import SwiftUI

enum Theme: String {
    case yellow
    case blue
    case red
    
    var accentColor: Color {
        switch self {
        case .yellow:
            return .black
        case .blue, .red:
            return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
}




