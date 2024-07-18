import SwiftUI

struct ContentView: View {
    @StateObject var gameViewModel: GameViewModel = GameViewModel()
    var colorManager = ColorManager()
    
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .aspectRatio(contentMode: .fit)
    }
}



