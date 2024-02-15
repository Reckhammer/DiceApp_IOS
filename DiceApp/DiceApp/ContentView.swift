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

struct ContentView: View 
{
    
    @State var dice1Number = 1;
    @State var dice2Number = 1;
    
    @State var diceTotal = 2;
    
    var body: some View
    {
        ZStack 
        {
            
            VStack 
            {
                Spacer();
                
                Text("Joshua Rechkemmer")
                    .font(.title);
                
                Spacer();
                
                Image("kpop")
                    .padding();
                
                Spacer();
                
                HStack
                {
                    DiceView(n: dice1Number);
                    DiceView(n: dice2Number);
                }
                .padding(.horizontal);
                
                Spacer();
                
                Button(action:
                        {
                    self.dice1Number = Int.random(in: 1...6);
                    self.dice2Number = Int.random(in:1...6);
                    self.diceTotal = self.dice1Number + self.dice2Number;
                        })
                {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal);
                    
                }
                .background(Color.teal);
                
                Text("Dice Total: \(diceTotal)");
            }
        }
    }
}

struct DiceView: View 
{
    
    let n: Int
    
    var body: some View 
    {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider 
{
    static var previews: some View 
    {
        ContentView()
    }
}
