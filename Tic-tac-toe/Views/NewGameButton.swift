import SwiftUI

struct NewGameButton: View {
    
    @EnvironmentObject var gameViewModel: GameViewModel
    
    func newGame() {
        gameViewModel.newGame = true
    }
    
    var body: some View {
        Button("New game") {
            newGame()
        }
       .bold()
       .padding(20)
       .contentShape(Rectangle())
       .border(Color.black)
    }
}


#Preview {
    NewGameButton()
}
