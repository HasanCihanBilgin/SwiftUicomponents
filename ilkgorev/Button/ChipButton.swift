import SwiftUI

struct ChipButton: View, ButtonRepresentable {
    var type: ButtonType
    var size: ButtonSize
    var title: String?
    var icon: Image?
    var disabled: Bool = false
    var action: () -> Void
    var backgroundImage: Image?

    var body: some View {
        VStack(spacing: 1) {
            ForEach(0..<16) { index in
                BaseButton(
                    content: buttonContent,
                    disabled: disabled,
                    action: action,
                    backgroundImage: backgroundImage,
                    buttonColor: buttonColor(for: index)
                )
                .frame(maxWidth: 150)
                .frame(height: 40)  // Buton yüksekliğini küçültüyoruz
                .background(buttonColor(for: index))
                .foregroundColor(textColor(for: index))
                .cornerRadius(cornerRadius(for: index))
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius(for: index))
                        .stroke(borderColor(for: index), lineWidth: borderWidth(for: index))
                )
                .padding(padding(for: index))
            }
        }
    }

    private var buttonContent: some View {
        Group {
            if let title = title {
                Text(title)
                    .font(.custom("SofiaPro-Bold", size: 16)) // Yazı tipini burada ayarlıyoruz
                    .foregroundColor(.white)
            } else if let icon = icon {
                icon
                    .foregroundColor(.white)
            }
        }
    }

    private func buttonColor(for index: Int) -> Color {
        switch index {
        case 0:
            return Color(UIColor(customHex: "#155ED4"))
        case 1:
            return Color(UIColor(customHex: "#1252BA"))
        case 2:
            return Color(UIColor(customHex: "#0F4295"))
        case 3:
            return Color(UIColor(customHex: "#155ED4"))
        case 4:
            return Color(UIColor(customHex: "#1252BA"))
        case 5:
            return Color(UIColor(customHex: "#0F4295"))
        case 6:
            return Color(UIColor(customHex: "#F8F8FC"))
        case 7:
            return Color(UIColor(customHex: "#F8F8FC"))
        case 8:
            return Color.white
        case 9:
            return Color(UIColor(customHex: "#ECF3FD"))
        case 10:
            return Color(UIColor(customHex: "#DAE8FB"))
        case 11:
            return Color.white
        case 12:
            return Color(UIColor(customHex: "#ECF3FD"))
        case 13:
            return Color(UIColor(customHex: "#DAE8FB"))
        case 14:
            return Color(UIColor(customHex: "#F5F6F9"))
        case 15:
            return Color(UIColor(customHex: "#F5F6F9"))
        default:
            return Color.clear
        }
    }

    private func textColor(for index: Int) -> Color {
        index >= 7 && index <= 9 || index == 15 ? .black : .white
    }

    private func borderColor(for index: Int) -> Color {
        switch index {
        case 0, 1, 2:
            return Color(UIColor(customHex: "#1252BA"))
        case 3, 4, 5:
            return Color(UIColor(customHex: "#0F4295"))
        case 6, 7:
            return Color(UIColor(customHex: "#155ED4"))
        case 8:
            return Color.blue
        case 9:
            return Color.white
        case  10, 11:
            return Color(UIColor(customHex: "#DAE8FB"))
        case 12, 13:
            return Color(UIColor(customHex: "#DAE8FB"))
        case 14, 15:
            return Color(UIColor(customHex: "#F5F6F9"))
        default:
            return Color.clear
        }
    }

    private func cornerRadius(for index: Int) -> CGFloat {
        switch index {
        case 1, 2, 3, 7, 9, 10, 11, 16:
            return 18
        case 4, 5, 6, 8, 12, 13, 14, 15:
            return 15
        default:
            return 20
        }
    }

    private func borderWidth(for index: Int) -> CGFloat {
        switch index {
        case 0, 1, 2,6,8,9,10,14:
            return 2
        case 3, 4, 5,7,11,12,13,15:
            return 1
        default:
            return 2
        }
    }

    private func padding(for index: Int) -> EdgeInsets {
        switch index {
        case 0:
            return EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20)
        case 1:
            return EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20)
        case 2:
            return EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20)
        case 3:
            return EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 18)
        case 4:
            return EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16)
        case 5:
            return EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16)
        case 6:
            return EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20)
        case 7:
            return EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16)
        case 8:
            return EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20)
        case 9:
            return EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20)
        case 10:
            return EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20)
        case 11:
            return EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16)
        case 12:
            return EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16)
        case 13:
            return EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16)
        case 14:
            return EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20)
        case 15:
            return EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16)
        default:
            return EdgeInsets(top: 16, leading: 20, bottom: 16, trailing: 20)
        }
    }
}

// Önizleme için
struct ChipButton_Previews: PreviewProvider {
    static var previews: some View {
        ChipButton(type: .chip, size: .medium, title: "Chip Button", action: {}, backgroundImage: Image(""))
    }
}
