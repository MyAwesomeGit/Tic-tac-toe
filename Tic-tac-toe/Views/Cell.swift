
import SwiftUI

struct Cell: View {
    
    @StateObject var viewModel: CellViewModel
    @Binding var newGame: Bool
    @Binding var isNextNought: Bool
    
    init(newGame: Binding<Bool>, isNextNought: Binding<Bool>) {
        _viewModel = StateObject(wrappedValue: CellViewModel())
        _newGame = newGame
        _isNextNought = isNextNought
    }
    
    @ViewBuilder
    private var content: some View {
        if newGame == true {
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
                if newGame == true {
                    newGame = false
                }
                if viewModel.cellType == .nought || viewModel.cellType == .cross {
                    return
                } else {
                    viewModel.cellType = isNextNought ? .nought : .cross
                    isNextNought.toggle()
                }
            }
            .aspectRatio(contentMode: .fit)
            .background(Color.gray.opacity(0.9))
            .background(Color.green.opacity(0.5))
            .onChange(of: newGame) { newValue in
                if newValue == true {
                    viewModel.cellType = .hidden
                }
            }
    }
}


struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(newGame: .constant(false), isNextNought: .constant(false))
            .aspectRatio(contentMode:.fit)
    }
}




