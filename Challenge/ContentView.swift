import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
        }
        .onAppear {
            LeetCode.PalindromeNumber.test()
        }
    }
}
