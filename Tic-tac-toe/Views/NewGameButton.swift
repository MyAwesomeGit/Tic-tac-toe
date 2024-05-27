import SwiftUI

struct NewGameButton: View {
    
    var body: some View{
        Button("New game") {
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
