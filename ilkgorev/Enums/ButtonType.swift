import SwiftUI

struct Theme {
    static let primary = Color(hex: "#155ED4")
    static let secondary = Color(hex: "#F8F8FC")
    static let tertiary = Color(hex: "#E9EAEF")
    static let text = Color(hex: "#191C24")
    static let chip = Color(hex: "#ECF3FD")
    static let icon = Color(hex: "#FFFFFF")
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}

enum ButtonType {
    case primary
    case secondary
    case tertiary
    case text
    case chip
    case icon
    
    func backgroundColor() -> Color {
        switch self {
        case .primary:
            return Theme.primary
        case .secondary:
            return Theme.secondary
        case .tertiary:
            return Theme.tertiary
        case .text:
            return Theme.text
        case .chip:
            return Theme.chip
        case .icon:
            return Theme.icon
        }
    }
}
