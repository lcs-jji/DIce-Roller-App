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
    @State var dicesRolled: [Int] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer(minLength: 50)
                Text("Roll the dice, up to 6.")
                    .fontDesign(.serif)
                    .bold()
                    .font(Font.custom("Gill Sans", size: 24))
                
                Spacer(minLength: 50)
                
                Text(feedback)
                    .fontDesign(.serif)
                    .font(Font.custom("Gill Sans", size: 24))
                
                Spacer(minLength: 40)
                
                HStack {
                    Stepper(value: $base, in: 1...6, label: {
                        Text("Dice Number")
                            .fontDesign(.serif)
                            .bold()
                            .font(Font.custom("Gill Sans", size: 20))
                    })
                    Spacer(minLength: 20)
                    Text("\(base)")
                        .italic()
                        .fontDesign(.serif)
                        .bold()
                        .font(Font.custom("Gill Sans", size: 30))
                        .foregroundStyle(.pink)
                }
                
                Spacer(minLength: 40)
                
                Button {
                    roll()
                } label: {
                    Text("Roll")
                        .fontDesign(.serif)
                        .bold()
                        .font(Font.custom("Gill Sans", size: 24))
                        .foregroundStyle(.mint)
                }
                
                Spacer(minLength: 30)
                
                Button {
                    reset()
                } label: {
                    Text("Reset")
                        .fontDesign(.serif)
                        .bold()
                        .font(Font.custom("Gill Sans", size: 24))
                        .foregroundStyle(.blue)
                }
                
                Spacer(minLength: 30)
                
                Text("Dices Rolled")
                    .fontDesign(.serif)
                    .bold()
                    .font(Font.custom("Gill Sans", size: 24))
                    .foregroundStyle(.indigo)
                
                Spacer(minLength: 20)
                
                ScrollView{
                    VStack(spacing: 5){
                        ForEach(dicesRolled, id: \.self) { currentDice in
                            Text("\(currentDice)")
                                .fontDesign(.serif)
                                .bold()
                                .font(Font.custom("Gill Sans", size: 30))
                                .foregroundStyle(.pink)
                            Divider()
                        }
                    }
                }
                
            }
            .padding()
            .navigationTitle("Dice Roller")
        }
    }
    
    func roll() {
        if base == 1 {
            feedback = "Total number is: \(condition1)"
            dicesRolled.append(condition1)
        } else if base == 2 {
            feedback = "Total number is: \(condition2)"
            dicesRolled.append(condition2)
        } else if base == 3 {
            feedback = "Total number is: \(condition3)"
            dicesRolled.append(condition3)
        } else if base == 4 {
            feedback = "Total number is: \(condition4)"
            dicesRolled.append(condition4)
        } else if base == 5 {
            feedback = "Total number is: \(condition5)"
            dicesRolled.append(condition5)
        } else if base == 6 {
            feedback = "Total number is: \(condition6)"
            dicesRolled.append(condition6)
        }
    }
    
    func reset() {
        condition1 = Int.random(in: 1...6)
        condition2 = Int.random(in: 2...12)
        condition3 = Int.random(in: 3...18)
        condition4 = Int.random(in: 4...24)
        condition5 = Int.random(in: 5...30)
        condition6 = Int.random(in: 6...36)
        feedback = ""
        dicesRolled.removeAll()
    }

}

#Preview {
    RollingView()
}
