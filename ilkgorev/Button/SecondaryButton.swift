import SwiftUI

struct SecondaryButton: View, ButtonRepresentable {
    var type: ButtonType
    var size: ButtonSize
    var title: String?
    var icon: Image?
    var disabled: Bool = false
    var action: () -> Void
    var backgroundImage: Image?
    var buttonColor: Color {
        return type.backgroundColor()
    }
    
    // Updated color array based on your provided colors
    let colors: [Color] = [
        .white,
        Color(red: 236/255, green: 243/255, blue: 253/255),
        Color(red: 218/255, green: 232/255, blue: 251/255),
        .white,
        Color(red: 236/255, green: 243/255, blue: 253/255),
        Color(red: 218/255, green: 232/255, blue: 251/255),
        .white,
        Color(red: 236/255, green: 243/255, blue: 253/255),
        Color(red: 218/255, green: 232/255, blue: 251/255),
        Color(red: 245/255, green: 246/255, blue: 249/255),
        Color(red: 245/255, green: 246/255, blue: 249/255),
        Color(red: 245/255, green: 246/255, blue: 249/255)
    ]
    
    var body: some View {
        VStack {
            ForEach(0..<12, id: \.self) { index in
                BaseButton(content: buttonContent, disabled: disabled, action: action, backgroundImage: backgroundImage, buttonColor: colors[index])
                    .frame(maxWidth: .infinity)
                    .frame(height: size.height())
                    .background(colors[index])
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .padding(.horizontal, 16)
            }
        }
    }
    
    private var buttonContent: some View {
        Group {
            if let title = title {
                Text(title)
                    .font(.custom("SofiaPro-Bold", size: 18)) // Yazı tipini burada ayarlıyoruz
                    .foregroundColor(.blue)
            } else if let icon = icon {
                icon
                    .foregroundColor(.white)
            }
        }
    }
}


#Preview {
    SecondaryButton(type: .secondary, size: .medium, title: "Secondary Button", action: {}, backgroundImage: Image(""))
}

