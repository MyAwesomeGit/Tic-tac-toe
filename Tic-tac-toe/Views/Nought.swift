import SwiftUI

struct Nought: View {
    var body: some View {
        Circle()
            .stroke(.red, lineWidth: 10)
    }
}


#Preview {
    Nought()
        .aspectRatio(contentMode: .fit)
}
