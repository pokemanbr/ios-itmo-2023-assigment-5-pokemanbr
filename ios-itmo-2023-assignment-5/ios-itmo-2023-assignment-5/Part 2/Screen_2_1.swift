import SwiftUI

struct Screen_2_1: View {
    @State private var currentIndex = 0
    @State private var bookmarked = false
    
    let images = ["nike1", "nike2", "nike3", "nike4"]
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $currentIndex) {
                    ForEach(0..<images.count, id: \.self) { index in
                        Image(images[index])
                            .resizable()
                            .scaledToFit()
                            .tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .frame(height: 350)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Кроссовки высокие")
                                .font(.title)
                            
                            HStack {
                                Text("1 250₽")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                
                                Text("1 500₽")
                                    .font(.title3)
                                    .strikethrough()
                                    .foregroundColor(.gray)
                            }
                        }
                        Spacer()
                        
                        Button(action: { bookmarked.toggle() }) {
                            Image(systemName: bookmarked ? "bookmark.fill" : "bookmark")
                                .foregroundColor(.gray)
                                .font(.title)
                        }
                        
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Доставка")
                            .foregroundStyle(.black)
                            .font(.subheadline)
                        Text("Доставка 6 августа, Санкт-Петербург – 140 ₽.")
                        Text("Бесплатная доставка от 15 000 ₽.")
                    }
                    .foregroundColor(.gray)
                    .font(.footnote)
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {}) {
                            Text("Добавить в корзину")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .bold()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        Button(action: {}) {
                            Text("Написать")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.blue)
                                .bold()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "cart")
                    }
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                    }
                }
            }
        }
    }
}

#Preview {
    Screen_2_1()
}
