//
//  SwitchView.swift
//  Switch
//
//  Created by Hasan Cihan Bilgin on 12.08.2024.
//

import SwiftUI

struct SwitchView: View {
    @State private var isSwitchOn1: Bool = true
    @State private var isSwitchOn2: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Switch")
                .font(.headline)
                .padding(.bottom, 10)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Text")
                        .font(.body)
                    // Bilgi simgesi "Info" metninin soluna yerleştirildi
                    HStack {
                        Image(systemName: "info.circle")
                            .foregroundColor(.yellow)
                        Text("Info")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                Spacer()
                Toggle("", isOn: $isSwitchOn1)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
            }
            .padding(.bottom, 10)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Text")
                        .font(.body)
                    // Bilgi simgesi "Info" metninin soluna yerleştirildi
                    HStack {
                        Image(systemName: "info.circle")
                            .foregroundColor(.yellow)
                        Text("Info")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                Spacer()
                Toggle("", isOn: $isSwitchOn2)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
            }
            .padding(.bottom, 10)
            
            Spacer()
        }
        .padding()
    }
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}
