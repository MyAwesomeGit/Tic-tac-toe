# Tic-Tac-Toe Game in SwiftUI

This project demonstrates a simple Tic-Tac-Toe game built using SwiftUI. It showcases the use of SwiftUI's declarative syntax to create interactive UI components, including buttons, grids, rows, cells, crosses, and circles.

## Overview
The game allows two players to take turns marking spaces in a 3x3 grid with either a cross (X) or a circle (O). The game state is managed through a combination of SwiftUI's @State property wrapper and binding variables to handle player turns and cell states.

## Project Structure
The project is organized into several SwiftUI views and models:

### Views:
- **ContentView**: Provides navigation support for the app, allowing users to navigate between different parts of the app if needed.

- **GameView**: The main view where the game logic and UI are combined.

- **Grid**: Represents the game board, composed of rows.

- **Row**: A row within the game board, containing cells.

- **Cell**: An individual cell within a row, capable of displaying either a hidden state, a cross, or a circle.

- **Cross**: A view representing the cross symbol.

- **Nought**: A view representing the circle symbol.

Each component is designed to be reusable and modular, adhering to SwiftUI's compositional design philosophy.

### Models:

- **CellViewModel**: Manages the state of each cell, including its type (hidden, cross, or nought).
- **GameViewModel**: Manages the overall game state, including whose turn it is next and whether a new game should start.
