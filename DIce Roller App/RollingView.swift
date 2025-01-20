//
//  ContentView.swift
//  DIce Roller App
//
//  Created by Xinchen Ji on 2025-01-20.
//

import SwiftUI

struct RollingView: View {
    
    @State var givenInput = ""
    @State var feedback = ""
    @State var rollHistory: [Int] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Roll the dice, up to 6.")
            }
            .padding()
            .navigationTitle("Dice Roller")
        }
    }
}

#Preview {
    RollingView()
}
