import SwiftUI

struct Row: View {
    @Binding var isNextNought: Bool
    
    var body: some View {
        HStack {
            Cell(isNextNought: $isNextNought)
            Cell(isNextNought: $isNextNought)
            Cell(isNextNought: $isNextNought)
        }
        .aspectRatio(contentMode: .fit)
        .background(Color.black.opacity(1.0))
    }
}


struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(isNextNought:.constant(true))
    }
}
