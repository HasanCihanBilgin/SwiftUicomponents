//
//  TextButton.swift
//  ilkgorev
//
//  Created by Hasan Cihan Bilgin on 25.07.2024.
//

import SwiftUI

struct TextButton: View {
    var title: String
    var textColor: Color = .white
    var backgroundColor: Color = .blue
    var font: Font = .custom("SofiaPro-Bold", size: 15)
    var cornerRadius: CGFloat = 8
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(font)
                .foregroundColor(textColor)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(backgroundColor, lineWidth: 1)
                )
                .padding(.horizontal, 16)
            
        }
    }
}

struct TextButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            
            TextButton(title: "Button 1", textColor: .black, backgroundColor: .white, action: {
                print("Button 1 tapped")
            })
            TextButton(title: "Button 2", textColor: .black, backgroundColor: .white, action: {
                print("Button 2 tapped")
            })
            TextButton(title: "Button 3", textColor: .black, backgroundColor: .white, action: {
                print("Button 3 tapped")
            })
            TextButton(title: "Button 4", textColor: .black, backgroundColor: .white, action: {
                print("Button 4 tapped")
            })
            TextButton(title: "Button 5", textColor: .black, backgroundColor: .white, action: {
                print("Button 5 tapped")
            })
            TextButton(title: "Button 6", textColor: .black, backgroundColor: .white, action: {
                print("Button 6 tapped")
            })
            TextButton(title: "Button 7", textColor: .black, backgroundColor: .white, action: {
                print("Button 7 tapped")
            })
            TextButton(title: "Button 8", textColor: .black, backgroundColor: .white, action: {
                print("Button 8 tapped")
            })
            TextButton(title: "Button 9", textColor: .black, backgroundColor: .white, action: {
                print("Button 9 tapped")
            })
            TextButton(title: "Button 10", textColor: .black, backgroundColor: .white, action: {
                print("Button 10 tapped")
            })
            TextButton(title: "Button 11", textColor: .black, backgroundColor: .white, action: {
                print("Button 11 tapped")
            })
        }
    }
}

