//
//  ContentView.swift
//  CardGame
//
//  Created by Muhamad Syahreen on 16/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card8"
    @State var cpuCard = "card8"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {

        VStack{
                        
            Image("brotherhood")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            Spacer()

            HStack{
                Spacer()
                Image(playerCard)
                    .resizable()
                    .frame(width: 100,height: 150)
                Spacer()
                Image(cpuCard)
                    .resizable()
                    .frame(width: 100,height: 150)
                Spacer()
            }
            
            Spacer()
            
            Button {
                
                //Generate random number betwen 2 to 14
                let playerRand = Int.random(in: 1...13)
                let cpuRand = Int.random(in: 1...13)
                
                //Update the cards
                playerCard = "card" + String(playerRand)
                cpuCard = "card" + String(cpuRand)
                
                //Update the score
                if playerRand > cpuRand {
                    playerScore += 1
                } else if cpuRand > playerRand {
                    cpuScore += 1
                }
                
            } label: {
                
                HStack{
//
                    Text("Click Me")
                        .foregroundColor(Color.white)
                        .padding(15)
                }
                .buttonStyle(.bordered)
                .background(Color.blue)
                .cornerRadius(20)

  

            }


            
            Spacer()

            HStack{
                Spacer()
                Text("Player")
                    .font(.headline)
                    .font(.largeTitle)
                Spacer()
                Text("CPU")
                    .font(.headline)
                    .font(.largeTitle)
                Spacer()
            }
            
            HStack{
                Spacer()
                Text(String(playerScore))
                    .fontWeight(.bold)
                    .padding(20)
                    .border(Color.black, width:5)
                    .cornerRadius(15)
                Spacer()
                Text(String(cpuScore))
                    .fontWeight(.bold)
                    .padding(20)
                    .border(Color.black, width:5)
                    .cornerRadius(15)
                Spacer()
            }
            
            Spacer()
            
        }.background(Color.green)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
