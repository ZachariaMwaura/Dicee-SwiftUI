//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Zacharia Mwaura on 2/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 1)
                }
                .padding(.horizontal)
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("ROLL")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
