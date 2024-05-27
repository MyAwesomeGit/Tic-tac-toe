import SwiftUI

struct Grid: View {
    @State var isNextNought: Bool = false
    
    var body: some View {
        ZStack {
            GridShape()
                .stroke(.indigo, lineWidth: 15)
            VStack {
                Row(isNextNought: $isNextNought)
                Row(isNextNought: $isNextNought)
                Row(isNextNought: $isNextNought)
            }
        }
        
        .aspectRatio(contentMode:.fit)
        .background(Color.black.opacity(0.9))
        .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    Grid()
}
