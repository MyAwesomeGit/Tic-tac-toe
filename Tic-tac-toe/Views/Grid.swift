import SwiftUI

struct Grid: View {
    @Binding var newGame: Bool
    @Binding var isNextNought: Bool
    
    init(newGame: Binding<Bool>, isNextNought: Binding<Bool>) {
        _newGame = newGame
        _isNextNought = isNextNought
    }
        
    var body: some View {
        ZStack {
            GridShape()
            VStack {
                Row(newGame: $newGame, isNextNought: $isNextNought)
                Row(newGame: $newGame, isNextNought: $isNextNought)
                Row(newGame: $newGame, isNextNought: $isNextNought)
            }
        }
         .edgesIgnoringSafeArea(.all)
    }
}


struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid(newGame: .constant(false), isNextNought: .constant(false))
    }
}
