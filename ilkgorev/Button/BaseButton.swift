import SwiftUI

struct BaseButton<Content: View>: View {
    let content: Content
    var disabled: Bool = false
    var action: () -> Void
    var backgroundImage: Image?
    var buttonColor: Color
    
    var body: some View {
        Button(action: action) {
            ZStack {
                if let backgroundImage = backgroundImage {
                    backgroundImage
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                } else {
                    buttonColor
                        .edgesIgnoringSafeArea(.all)
                }
                content
                    .opacity(disabled ? 0.5 : 1.0)
            }
        }
        .disabled(disabled)
    }
}

#Preview {
    BaseButton(content: Text("Tıkla"), action: {}, backgroundImage: Image(""), buttonColor: .primary)
}
