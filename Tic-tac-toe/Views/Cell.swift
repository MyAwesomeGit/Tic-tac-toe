import SwiftUI

struct Cell: View {
    
    enum CellType {
        case hidden
        case nought
        case cross
    }
    
    @State private var type: CellType = .hidden
    @Binding var isNextNought: Bool
    
    @ViewBuilder
    private var content: some View {
        switch type {
        case .hidden:
            Color.clear
        case .nought:
            Nought()
        case .cross:
            Cross()
        }
    }
    
    var body: some View{
        content
            .padding(20)
            .contentShape(Rectangle())
            .onTapGesture {
                guard type == .hidden else {
                    return
                }
                type = isNextNought ? .nought : .cross
                isNextNought.toggle()
            }
            .aspectRatio(contentMode: .fit)
            .background(Color.gray.opacity(0.9))
            .background(Color.green.opacity(0.9))
    }
}


struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(isNextNought:.constant(true))
           .aspectRatio(contentMode:.fit)
    }
}
