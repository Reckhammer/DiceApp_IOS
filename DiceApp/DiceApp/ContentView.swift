//
//  ContentView.swift
//  OneDice
//
//  Created by Young Lee on 2/14/24.
//
// Project by Joshua Rechkemmer
// Lee CSCI 4335-001
//


import SwiftUI

struct ContentView: View {
    
    @State var diceNumber = 1
    
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                Text("insert you name")
                Spacer()
                Text("Insert any image here")
                Spacer()
                HStack {
                    DiceView(n: diceNumber)
                    Text("Insert one more dice here")
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.diceNumber = Int.random(in: 1...6)
                   
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                }
                .background(Color.blue)
                Text(" when click roll button, two dice should roll")
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
