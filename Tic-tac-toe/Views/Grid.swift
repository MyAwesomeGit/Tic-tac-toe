import SwiftUI

struct Grid: View {
    
    @EnvironmentObject var gameViewModel: GameViewModel
        
    var body: some View {
        ZStack {
            GridShape()
            VStack {
                Row()
                Row()
                Row()
            }
        }
         .edgesIgnoringSafeArea(.all)
    }
}


struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
