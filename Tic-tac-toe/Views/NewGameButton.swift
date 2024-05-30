import SwiftUI

struct NewGameButton: View {
    
    @Binding var newGame: Bool
    
    init(newGame: Binding<Bool>) {
        _newGame = newGame
    }
    
    private func createNewGame() {
        newGame = true
    }
    
    var body: some View {
        Button("New game") {
            createNewGame()
        }
       .bold()
       .padding(20)
       .contentShape(Rectangle())
       .border(Color.black)
    }
}


#Preview {
    NewGameButton(newGame: .constant(true))
}
