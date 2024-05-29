import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
        
    @Published var isNextNought: Bool = false
    
    @Published var newGame: Bool = false
    
}
