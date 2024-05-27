import SwiftUI

struct Cross: View {
    var body: some View {
        CrossShape()
            .stroke(.green, style: StrokeStyle(lineWidth: 10,
                                               lineCap: .round,
                                               lineJoin: .round))
    }
}


#Preview {
    Cross()
        .aspectRatio(contentMode: .fit)
}

