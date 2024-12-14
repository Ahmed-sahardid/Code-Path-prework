import SwiftUI

struct ContentView: View {
    @State private var backgroundColor: Color = .white // Initial background color

    var body: some View {
        VStack() {
            Label("Ahmed Sahardid", systemImage: "person.fill") // Replace "none" with a valid SF Symbol
            Label("University of Minnesota", systemImage: "building.2.fill")
            Label("Cloud Engineer", systemImage: "cloud.fill")
            
            Button(action: changeColor) {
                Text("Change-BG")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.purple)
                    .cornerRadius(30)
            }
        }
        .padding(10)
        .background(backgroundColor) // Use the dynamic color as background
        .edgesIgnoringSafeArea(.all) // Extend the background to the full screen
    }

    func changeColor() {
        // Generate a random color
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        backgroundColor = Color(red: red, green: green, blue: blue)
    }
}

#Preview {
    ContentView()
}
