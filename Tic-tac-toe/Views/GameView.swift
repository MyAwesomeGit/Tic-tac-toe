
import SwiftUI

struct GameView: View {
    @StateObject var gameViewModel: GameViewModel = GameViewModel()
    
    var body: some View {
        
        ZStack {
            colorManager.mainBackgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                NewGameButton(newGame: $gameViewModel.newGame)
                Grid(newGame: $gameViewModel.newGame, isNextNought: $gameViewModel.isNextNought)
                    .padding(.horizontal, 20)
            }
        }
    }
}
