//
//  ContentView.swift
//  DIce Roller App
//
//  Created by Xinchen Ji on 2025-01-20.
//

import SwiftUI

struct RollingView: View {
    
    @State var base: Int = 1
    @State var condition1 = Int.random(in: 1...6)
    @State var condition2 = Int.random(in: 2...12)
    @State var condition3 = Int.random(in: 3...18)
    @State var condition4 = Int.random(in: 4...24)
    @State var condition5 = Int.random(in: 5...30)
    @State var condition6 = Int.random(in: 6...36)
    @State var feedback = ""
    @State var rollHistory: [Int] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Roll the dice, up to 6.")
                Spacer()
                HStack {
                    Stepper(value: $base, in: 1...6, label: {
                        Text("Dice Number")
                    })
                    Spacer(minLength: 20)
                    Text("\(base)")
                }
            }
            .padding()
            .navigationTitle("Dice Roller")
        }
    }
}

#Preview {
    RollingView()
}
