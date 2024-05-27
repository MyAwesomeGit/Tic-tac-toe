import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NewGameButton()
            
            Grid()
                .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ContentView()
}
