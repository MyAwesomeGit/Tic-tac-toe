import SwiftUI

struct Cell: View {
    
    @StateObject var viewModel: CellViewModel
    @EnvironmentObject var gameViewModel: GameViewModel
    
    init() {
        _viewModel = StateObject(wrappedValue: CellViewModel())
    }
    
    @ViewBuilder
    private var content: some View {
        if gameViewModel.newGame == true {
            Color.clear
        } else {
            switch viewModel.cellType {
            case .hidden:
                Color.clear
            case .nought:
                Nought()
            case .cross:
                Cross()
            }
        }
    }
    
    var body: some View{
        content
            .padding(20)
            .contentShape(Rectangle())
            .onTapGesture {
                if gameViewModel.newGame == true {
                    viewModel.cellType = .hidden
                }
                if viewModel.cellType == .nought || viewModel.cellType == .cross {
                    return
                } else {
                    viewModel.cellType = gameViewModel.isNextNought ? .nought : .cross
                    gameViewModel.isNextNought.toggle()
                }
            }
            .aspectRatio(contentMode: .fit)
            .background(Color.gray.opacity(0.9))
            .background(Color.green.opacity(0.5))
    }
}


struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell()
            .aspectRatio(contentMode:.fit)
    }
}
