import SwiftUI

var colorManager = ColorManager()

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: GameView()) {
                ZStack {
                    colorManager.mainBackgroundColor.edgesIgnoringSafeArea(.all)
                    Text("Начни игру")
                        .padding()
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .foregroundColor(colorManager.mainFontColor)
                        .font(.largeTitle.bold())
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .aspectRatio(contentMode: .fit)
    }
}
