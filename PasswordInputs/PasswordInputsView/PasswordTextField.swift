//
//  PasswordTextField.swift
//  PasswordInputs
//
//  Created by Hasan Cihan Bilgin on 8.08.2024.
//
import SwiftUI

struct PasswordTextField: View {
    @Binding var text: String
    var placeholder: String
    var borderColor: Color
    var isError: Bool
    var shouldCenterText: Bool
    
    var body: some View {
        ZStack(alignment: .leading) {
            if shouldCenterText && text.isEmpty {
                // 1., 2., ve 6. kutular için placeholder ayarı
                Text(placeholder)
                    .foregroundColor(isError ? Color.red : Color.blue)
                    .padding(.leading, 16)
                    .padding(.vertical, 16)
            } else if !shouldCenterText && text.isEmpty {
                // 3., 4., 5., ve 7. kutular için placeholder ayarı
                Text(placeholder)
                    .foregroundColor(isError ? Color.red : Color.blue)
                    .padding(.leading, 16)
                    .padding(.bottom, 32)  // Placeholder'ı şifre alanının hemen üstüne taşır
                    .scaleEffect(0.9, anchor: .leading) // Placeholder'ın boyutunu küçültür
            }
            
            SecureField("", text: $text)
                .padding(16)
                .background(Color.clear)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(borderColor, lineWidth: 2)
                )
                .padding(.horizontal, 8)
            
            if isError {
                HStack {
                    Spacer()
                    Image(systemName: "exclamationmark.circle")
                        .foregroundColor(Color.red)
                        .padding(.trailing, 10)
                }
            } else {
                HStack {
                    Spacer()
                    Image(systemName: "info.circle")
                        .foregroundColor(Color.gray)
                        .padding(.trailing, 10)
                }
            }
        }
        .frame(height: 56)
        .padding(.horizontal)
    }
}

struct PasswordTextField_Previews: PreviewProvider {
    @State static var text = ""
    
    static var previews: some View {
        VStack(spacing: 20) {
            PasswordTextField(text: $text, placeholder: "Label", borderColor: .gray, isError: false, shouldCenterText: true)
            PasswordTextField(text: $text, placeholder: "Label", borderColor: .blue, isError: false, shouldCenterText: false)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
