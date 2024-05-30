import SwiftUI

struct Row: View {
    @Binding var newGame: Bool
    @Binding var isNextNought: Bool
    
    init(newGame: Binding<Bool>, isNextNought: Binding<Bool>) {
        _newGame = newGame
        _isNextNought = isNextNought
    }
    
    var body: some View {
        HStack {
            Cell(newGame: $newGame, isNextNought: $isNextNought)
            Cell(newGame: $newGame, isNextNought: $isNextNought)
            Cell(newGame: $newGame, isNextNought: $isNextNought)
            }
        .aspectRatio(contentMode: .fit)
    }
}


struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(newGame: .constant(false), isNextNought: .constant(false))
    }
}
