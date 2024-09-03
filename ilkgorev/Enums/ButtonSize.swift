//
//  ButtonSize.swift
//  ilkgorev
//
//  Created by Hasan Cihan Bilgin on 23.07.2024.
//

import SwiftUI


enum ButtonSize {
    case small, medium, large

    func height() -> CGFloat {
        switch self {
        case .small: return 40
        case .medium: return 50
        case .large: return 60
        }
    }

    func width() -> CGFloat {
        switch self {
        case .small: return 40
        case .medium: return 50
        case .large: return 60
        }
    }
}

