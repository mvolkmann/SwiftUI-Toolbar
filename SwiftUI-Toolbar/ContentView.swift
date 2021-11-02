import SwiftUI

struct ContentView: View {
    @State var selection = "Tap a toolbar button."
    
    var body: some View {
        NavigationView {
            Text(selection).padding()
                .navigationTitle("Toolbar Demo")
                .toolbar { // must be inside a NavigationView
                    // placement attribute values include:
                    // - .navigationBarLeading: top, left-justified
                    // - .navigationBarTrailing: top, right-justified
                    // - .bottomBar: bottom, centered
                    // - other values seem to not handle multiple buttons
                    // Can use ToolbarItem instead of ToolbarItemGroup
                    // if just one button inside.
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        // If there are only two buttons, they are
                        // laid out as if there is a Spacer between them.
                        // For other layouts, add your own Spacer views.
                        Button(
                            action: { selection = "planes" },
                            label: { Image(systemName: "airplane") }
                        )
                        Button(
                            action: { selection = "trains" },
                            label: { Image(systemName: "tram") }
                        )
                        Button(
                            action: { selection = "automobiles" },
                            label: { Image(systemName: "car.fill") }
                        )
                    }
                    ToolbarItemGroup(placement: .bottomBar) {
                        Button(
                            action: { selection = "hearts" },
                            label: { Image(systemName: "suit.heart.fill") }
                        )
                        Button(
                            action: { selection = "diamonds" },
                            label: { Image(systemName: "suit.diamond.fill") }
                        )
                        Button(
                            action: { selection = "clubs" },
                            label: { Image(systemName: "suit.club.fill") }
                        )
                        Button(
                            action: { selection = "spades" },
                            label: { Image(systemName: "suit.spade.fill") }
                        )
                        Spacer()
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
