import SwiftUI

// Butonun temel yapısı
struct PrimaryButton: View, ButtonRepresentable {
    var type: ButtonType
    var size: ButtonSize
    var title: String?
    var icon: Image?
    var disabled: Bool = false
    var action: () -> Void
    var backgroundImage: Image?

    var body: some View {
        VStack(spacing: 16) {
            ForEach(ButtonStyle.allCases, id: \.self) { style in
                BaseButton(content: buttonContent, disabled: disabled, action: action, backgroundImage: backgroundImage, buttonColor: style.backgroundColor)
                    .frame(maxWidth: .infinity)
                    .frame(height: size.height())
                    .background(style.backgroundColor) // Butonun arka plan rengini burada ayarlıyoruz
                    .foregroundColor(.white)
                    .cornerRadius(style.cornerRadius)
                    .overlay(
                        RoundedRectangle(cornerRadius: style.cornerRadius)
                            .stroke(style.borderColor, lineWidth: style.borderWidth) // Butonun kenarlık rengini burada ayarlıyoruz
                    )
                    .padding(.horizontal, style.padding)
                
            }
        }
    }

    private var buttonContent: some View {
        Group {
            if let title = title {
                Text(title)
                    .font(.custom("SofiaPro-Bold", size: 18)) // Yazı tipini burada ayarlıyoruz
                    .foregroundColor(.white)
            } else if let icon = icon {
                icon
                    .foregroundColor(.white)
            }
        }
    }
}

// Enum buton stillerini tanımlar
enum ButtonStyle: CaseIterable {
    case blue1  // 1. buton: #155ED4
    case blue2  // 2. buton: #1252BA
    case blue3  // 3. buton: #0F4295
    case blue4  // 4. buton: #155ED4
    case blue5  // 5. buton: #1252BA
    case blue6  // 6. buton: #0F4295
    case blue7  // 7. buton: #155ED4
    case blueHover  // 8. buton: #1252BA
    case bluePressed  // 9. buton: #0F4295
    case disable1  // 10. buton: #F5F6F9
    case disable2  // 11. buton: #F5F6F9
    case disable3  // 12. buton: #F5F6F9

    var backgroundColor: Color {
        switch self {
        case .blue1, .blue4, .blue7:
            return Color(UIColor(customHex: "#155ED4")) // 1., 4., 7. butonlar için mavi renk
        case .blue2, .blue5, .blueHover:
            return Color(UIColor(customHex: "#1252BA")) // 2., 5., 8. butonlar için mavi renk (hover)
        case .blue3, .blue6, .bluePressed:
            return Color(UIColor(customHex: "#0F4295")) // 3., 6., 9. butonlar için mavi renk (pressed)
        case .disable1, .disable2, .disable3:
            return Color(UIColor(customHex: "#F5F6F9")) // 10., 11. ve 12. butonlar için gri renk (disable)
        }
    }

    var borderColor: Color {
        switch self {
        case .blue1, .blue4, .blue7:
            return Color(UIColor(customHex: "#155ED4")) // 1., 4., 7. butonlar için mavi kenarlık
        case .blue2, .blue5, .blueHover:
            return Color(UIColor(customHex: "#1252BA")) // 2., 5., 8. butonlar için mavi kenarlık (hover)
        case .blue3, .blue6, .bluePressed:
            return Color(UIColor(customHex: "#0F4295")) // 3., 6., 9. butonlar için mavi kenarlık (pressed)
        case .disable1, .disable2, .disable3:
            return Color(UIColor(customHex: "#F5F6F9")) // 10., 11. ve 12. butonlar için gri kenarlık (disable)
        }
    }

    var cornerRadius: CGFloat {
        switch self {
        case .blue1, .blue2, .blue3, .blue4, .blue5, .blue6, .blue7, .blueHover, .bluePressed, .disable1, .disable2, .disable3:
            return 8
        }
    }

    var borderWidth: CGFloat {
        switch self {
        case .blue1, .blue2, .blue3, .disable1:
            return 5
        case .blue4, .blue5, .blue6, .disable2:
            return 3
        case .blue7, .blueHover, .bluePressed, .disable3:
            return 1
        }
    }

    var padding: CGFloat {
        switch self {
        case .blue1, .blue2, .blue3, .disable1:
            return 16
        case .blue4, .blue5, .blue6, .disable2:
            return 11
        case .blue7, .blueHover, .bluePressed, .disable3:
            return 8
        }
    }
}

// Önizleme için
struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(
            type: .primary,
            size: .medium,
            title: "Primary Button",
            action: {},
            backgroundImage: Image("")
        )
    }
}
