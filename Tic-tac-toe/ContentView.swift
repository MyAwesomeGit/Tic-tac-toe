import SwiftUI

struct ContentView: View {
    @StateObject var gameViewModel: GameViewModel = GameViewModel()
    
    var body: some View {
        VStack {
            
            NewGameButton(newGame: $gameViewModel.newGame)
            
            Grid(newGame: $gameViewModel.newGame, isNextNought: $gameViewModel.isNextNought)
                .padding(.horizontal, 20)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .aspectRatio(contentMode: .fit)
    }
}
