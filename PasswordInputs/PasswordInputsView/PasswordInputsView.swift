//
//  PasswordTextField.swift
//  PasswordInputs
//
//  Created by Hasan Cihan Bilgin on 8.08.2024.
//
import SwiftUI

struct PasswordInputsView: View {
    @State private var text1 = ""
    @State private var text2 = ""
    @State private var text3 = "..."
    @State private var text4 = ""
    @State private var text5 = "......"
    @State private var text6 = ""
    @State private var text7 = "......"
    
    var body: some View {
        VStack(spacing: 40) {
            PasswordTextField(
                text: $text1,
                placeholder: "Label",
                borderColor: Color(red: 233/255, green: 234/255, blue: 239/255),
                isError: false,
                shouldCenterText: true
            )
            PasswordTextField(
                text: $text2,
                placeholder: "Label",
                borderColor: Color(red: 219/255, green: 221/255, blue: 230/255),
                isError: false,
                shouldCenterText: true
            )
            PasswordTextField(
                text: $text3,
                placeholder: "Label",
                borderColor: Color(red: 21/255, green: 94/255, blue: 212/255),
                isError: false,
                shouldCenterText: false
            )
            PasswordTextField(
                text: $text4,
                placeholder: "Label",
                borderColor: Color(red: 233/255, green: 234/255, blue: 239/255),
                isError: false,
                shouldCenterText: false
            )
            PasswordTextField(
                text: $text5,
                placeholder: "Label",
                borderColor: Color(red: 219/255, green: 221/255, blue: 230/255),
                isError: false,
                shouldCenterText: false
            )
            PasswordTextField(
                text: $text6,
                placeholder: "Label",
                borderColor: Color(red: 231/255, green: 63/255, blue: 63/255),
                isError: true,
                shouldCenterText: true
            )
            PasswordTextField(
                text: $text7,
                placeholder: "Label",
                borderColor: Color(red: 231/255, green: 63/255, blue: 63/255),
                isError: true,
                shouldCenterText: false
            )
        }
        .padding()
    }
}

struct PasswordInputsView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordInputsView()
    }
}
