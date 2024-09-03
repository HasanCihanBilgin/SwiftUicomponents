import SwiftUI

struct IconButton: View, ButtonRepresentable {
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

    var body: some View {
        VStack {
            BaseButton(content: buttonContent, disabled: disabled, action: action, backgroundImage: backgroundImage, buttonColor: Color(red: 233/255, green: 234/255, blue: 239/255)) // #E9EAEF
                .frame(width: size.width(), height: size.height())
                .background(Color(red: 233/255, green: 234/255, blue: 239/255))
                .foregroundColor(.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding(.horizontal, 16)

            BaseButton(content: buttonContent, disabled: disabled, action: action, backgroundImage: backgroundImage, buttonColor: Color(red: 219/255, green: 221/255, blue: 230/255)) // #DBDDE6
                .frame(width: size.width(), height: size.height())
                .background(Color(red: 219/255, green: 221/255, blue: 230/255))
                .foregroundColor(.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding(.horizontal, 16)

            BaseButton(content: buttonContent, disabled: disabled, action: action, backgroundImage: backgroundImage, buttonColor: Color.white)
                .frame(width: size.width(), height: size.height())
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding(.horizontal, 16)
        }
    }
    
    private var buttonContent: some View {
        Group {
            if let title = title {
                Text(title)
                    .font(.custom("SofiaPro-Bold", size: 17)) // Yazı tipini burada ayarlıyoruz
                    .foregroundColor(.white)
            } else if let icon = icon {
                icon
                    .foregroundColor(.black) // Bu çizgi artı işaretinin siyah olmasını sağlayacak
            }
        }
    }
}

#Preview {
    IconButton(type: .icon, size: .medium, icon: Image(systemName: "plus"), action: {}, backgroundImage: Image(""))
}
