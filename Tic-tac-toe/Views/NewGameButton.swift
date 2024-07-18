import SwiftUI

struct NewGameButton: View {
    
    @Binding var newGame: Bool
    var colorManager = ColorManager()
    
    init(newGame: Binding<Bool>) {
        _newGame = newGame
    }
    
    private func createNewGame() {
        newGame = true
    }
    
    var body: some View {
        Button(action: {
            createNewGame()
        }) {
            Text("Новая игра")
                .foregroundColor(colorManager.mainFontColor)
                .font(.title)
        }
        .padding(20)
        .contentShape(Rectangle())
    }
}


#Preview {
    NewGameButton(newGame: .constant(true))
}
