import SwiftUI

struct Screen_1_2: View {
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Text("Введите пароль")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.top, 25)
                .padding(.horizontal)
                
                VStack {
                    VStack {
                        TextField("Введите пароль", text: $password)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.3), lineWidth: 1))
                            .padding(.horizontal)
                        
                        HStack {
                            Button("Забыли или не установили пароль?") {
                            }
                            .padding()
                            Spacer()
                        }
                    }
                    
                    Spacer()
                    
                    Button("Продолжить") {
                    }
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Image("vkid")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                        Text("ID")
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    Screen_1_2()
}
