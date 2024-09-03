import SwiftUI

struct ButtonView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 28) {
                    NavigationLink(destination: PrimaryButtonsViewExample()) {
                        Text("Primary Buttons")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .font(.custom("SofiaPro-Bold", size: 18))
                    }

                    NavigationLink(destination: SecondaryButtonsViewExample()) {
                        Text("Secondary Buttons")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .font(.custom("SofiaPro-Bold", size: 18))

                    }

                    NavigationLink(destination: TertiaryButtonsViewExample()) {
                        Text("Tertiary Buttons")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .font(.custom("SofiaPro-Bold", size: 18))

                    }

                    NavigationLink(destination: ChipButtonsViewExample()) {
                        Text("Chip Buttons")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .font(.custom("SofiaPro-Bold", size: 18))

                    }

                    NavigationLink(destination: IconButtonsViewExample()) {
                        Text("Icon Buttons")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .font(.custom("SofiaPro-Bold", size: 18))

                    }

                    NavigationLink(destination: TextButtonsViewExample()) {
                        Text("Text Buttons")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.red)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .font(.custom("SofiaPro-Bold", size: 18))

                    }
                }
                .padding()
            }
            .navigationTitle("Buttons Overview")
        }
    }
}

struct PrimaryButtonsViewExample: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 28) {
                PrimaryButton(type: .primary, size: .medium, title: "Primary Medium", action: {})
            }
            .padding()
            .navigationTitle("Primary Buttons")
        }
    }
}

struct SecondaryButtonsViewExample: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 28) {
                SecondaryButton(type: .secondary, size: .medium, title: "Secondary Medium", action: {})
            }
            .padding()
            .navigationTitle("Secondary Buttons")
        }
    }
}

struct TertiaryButtonsViewExample: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 28) {
                TertiaryButton(type: .tertiary, size: .medium, title: "Tertiary Medium", action: {})
            }
            .padding()
            .navigationTitle("Tertiary Buttons")
        }
    }
}

struct ChipButtonsViewExample: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 28) {
                ChipButton(type: .chip, size: .medium, title: "Chip Medium", action: {})
            }
            .padding()
            .navigationTitle("Chip Buttons")
        }
    }
}

struct IconButtonsViewExample: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 28) {
                IconButton(type: .icon, size: .medium, icon: Image(systemName: "plus"), action: {})
            }
            .padding()
            .navigationTitle("Icon Buttons")
        }
    }
}

struct TextButtonsViewExample: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 28) {
                ForEach(1...11, id: \.self) { index in
                    TextButton(title: "Button \(index)", textColor: .black, backgroundColor: .white, action: {
                        print("Button \(index) tapped")
                    })
                }
            }
            .padding()
            .navigationTitle("Text Buttons")
        }
    }
}

#Preview {
    ButtonView()
}
