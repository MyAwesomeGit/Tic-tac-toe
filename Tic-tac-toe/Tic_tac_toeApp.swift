import SwiftUI

@main
struct Tic_tac_toeApp: App {
    
    @StateObject var gameViewModel: GameViewModel = GameViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(gameViewModel)
        }
    }
}
