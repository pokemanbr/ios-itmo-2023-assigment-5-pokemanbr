import SwiftUI

struct Screen_1_1: View {
    @State var sliderValue: Double = 29
    @State var bufferValue: Double = 150
    let trackDuration: Double = 224
    
    var currentTime: String {
        let totalSeconds = Int(sliderValue)
        let minutes = totalSeconds / 60
        let seconds = totalSeconds % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
    
    var remainingTime: String {
        let totalSeconds = Int(trackDuration - sliderValue)
        let minutes = totalSeconds / 60
        let seconds = totalSeconds % 60
        return String(format: "-%d:%02d", minutes, seconds)
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Image("album_cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(.rect(cornerRadius: 10.0))
                    .padding([.leading, .trailing])
                    .padding(.bottom, -8)
                
                ZStack {
                    Rectangle()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .offset(x: -90)
                        .foregroundColor(.blue.opacity(0.3))
                        .frame(width: 140, height: 3.5)
                    
                    Slider(value: $sliderValue, in: 0...trackDuration, step: 1)
                        .accentColor(.white)
                    
                }
                .padding(.top, 5)
                .padding(.bottom, -8)
                .padding([.leading, .trailing])
                
                HStack {
                    Text(currentTime)
                    Spacer()
                    Text(remainingTime)
                }
                .padding([.leading, .trailing])
                
            }
            .padding()
            
            
            VStack(alignment: .leading) {
                Text("Freak mode")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Dorian Electra")
                    .font(.headline)
                    .padding(.horizontal)
                    .fontWeight(.light)
            }
            .padding(.top, -15)
            
            HStack {
                Button(action: {}) {
                    Image(systemName: "arrow.down.to.line")
                        .imageScale(.small)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "backward.fill")
                        .imageScale(.small)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "pause.fill")
                        .imageScale(.large)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                        .imageScale(.small)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "ellipsis")
                        .imageScale(.small)
                }
            }
            .font(.largeTitle)
            .padding([.leading, .trailing])
            .padding(.top)
            .foregroundColor(.white)
            
            Spacer()
        }
        .background(Color.pink.opacity(0.8))
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Screen_1_1()
}
