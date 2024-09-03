//
//  CheckboxView.swift
//  Checkbox
//
//  Created by Hasan Cihan Bilgin on 17.08.2024.
//
import SwiftUI

struct CheckboxView: View {
    @State private var isChecked = false

    var body: some View {
        HStack(spacing: 16) {
            Button(action: {
                isChecked.toggle()
            }) {
                Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                    .foregroundColor(isChecked ? Color.blue : Color.gray)
                    .frame(width: 20, height: 20)
            }
            .buttonStyle(PlainButtonStyle())

            Text("Title")
                .font(.body)
            
            Spacer()
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 20)
        .background(Color.white)
        .border(Color.gray.opacity(0.2), width: 1)
        .frame(width: 375, height: 65, alignment: .leading)
    }
}

struct CheckboxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxView()
    }
}
