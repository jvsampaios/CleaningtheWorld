//
//  TownView.swift
//  Cleaning the World
//
//  Created by user on 11/04/23.
//

import Foundation
import SwiftUI

struct TownView: View {
    
    @State private var contador = 0

    @State private var displayText = "Our rivers, mangroves and seas are dirty and polluted. That's sad! We need to change this reality before it's too late! Are you willing to help me?"
    
    var body: some View {
        GeometryReader { proxy in
            
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "town.png"))
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .position(x: proxy.size.width * 0.5, y: proxy.size.height * 0.48)
                
                Image(uiImage: #imageLiteral(resourceName: "paper.png"))
                    .resizable()
                    .frame(width: proxy.size.width * 0.15, height: proxy.size.height * 0.15)
                    .position(x: proxy.size.width * 0.8, y: proxy.size.height * 0.6)

                Text("Town")
                    .font(.largeTitle)
                
                Text(displayText)
                    .padding()
                    .frame(width: proxy.size.width * 0.5, height: proxy.size.height * 0.65)
                    .position(x: proxy.size.width * 0.45, y: proxy.size.height * 0.75)
                
                Image(uiImage: #imageLiteral(resourceName: "skip.png"))
                    .resizable()
                    .frame(width: proxy.size.width * 0.10, height: proxy.size.height * 0.10)
                    .position(x: proxy.size.width * 0.85, y: proxy.size.height * 0.75)
                    .onTapGesture {
                        self.contador += 1
                        if(self.contador >= 545){
                            displayText = "Congrats! You cleaned all the beach!"
                        }
                        else {
                            switch self.contador % 9 {
                        case 1:
                            displayText = "Did you know that half of all plastic produced in the world ends up in the ocean? "
                        case 2:
                            displayText = "People need to be more careful with that they throw away. Never litter and always when you go to the beach, pick up all your trash and dispose of it in proper trash cans."
                        case 3:
                            displayText = "Now I ask you: do you have any idea how much gargabe that people produced in city? No?"
                            
                        case 4:
                            displayText = "Each person produces more than 1kg of waste every day. Hm... now multiply that by the number of days in a year..."
                            
                        case 5:
                            displayText = "There is more trash than people in the city! "
                            
                        case 6:
                            displayText = "The problem is that people take this trash to nature, polluting the habitat of various animals, especially my friends who live in the mangroves and in the depths of the sea."
                            
                        case 7:
                            displayText = "It is the duty of every citizen to not let trash be thrown anywhere. Let's practice it?"
                            
                        case 8:
                            displayText = "Clean our beach by dragging all that trash and dropping it in the proper trash can."
                            
                        default:
                            displayText = "Let`s go, clean our beach"
                        }
                        }
                        
                    }
            }
        }
    }
}
