import SwiftUI

struct Row: View {
    
    var body: some View {
        HStack {
            Cell()
            Cell()
            Cell()
            }
        .aspectRatio(contentMode: .fit)
    }
}


struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row()
    }
}
