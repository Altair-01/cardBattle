//
//  ContentView.swift
//  cardBattle
//
//  Created by Oumar Sonko on 03/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card5"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack  {

        Image("background")
            .ignoresSafeArea()
            VStack  {
                //Spacer permet de faire des padding entre différents éléments
                Spacer()
                Image("logo")
                
                Spacer()
                VStack{
                    HStack  {
                        Spacer()
                        Image(playerCard)
                        Spacer()
                        Image(cpuCard)
                        Spacer()
                    }
                }
                
                Spacer()
                VStack{
                    // Generer un nombre random pour les cartes cad entre 2 et 14 inclus
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    //Button avec label permet d'avoir un button customiser avec image ou texte....
                    Button {
                        playerCard = "card"+String(playerRand)
                        cpuCard = "card"+String(cpuRand)
                        
                        //Maj des scores
                        if(playerRand>cpuRand){
                            playerScore += 1}
                        else if (cpuRand>playerRand){
                            cpuScore += 1}
                    } label: {
                            Image("dealbutton")
                    }

                }
                Spacer()
                VStack  {
                    HStack {
                        Spacer()
                        VStack  {
                            Text("PLAYER")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom)
                            Text(String(playerScore))
                                .font(.largeTitle)
                                    .foregroundColor(Color.white)
                        }
                        
                        Spacer()
                        VStack  {
                            Text("CPU").font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom)
                            Text(String(cpuScore))
                                .font(.largeTitle)
                                    .foregroundColor(Color.white)
                        }
                        .padding()
                        Spacer()
                    }
                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
