//
//  MangroveView.swift
//  Cleaning the World
//
//  Created by user on 11/04/23.
//

import Foundation
import SwiftUI

struct MangroveView: View {
    @State private var contador = 0

    @State private var displayText = "Our rivers, mangroves and seas are dirty and polluted. That's sad! We need to change this reality before it's too late! Are you willing to help me?"
    
    var body: some View {
        GeometryReader { proxy in
            
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "mangue.png"))
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .position(x: proxy.size.width * 0.5, y: proxy.size.height * 0.48)
                
                Image(uiImage: #imageLiteral(resourceName: "metal.png"))
                    .resizable()
                    .frame(width: proxy.size.width * 0.15, height: proxy.size.height * 0.15)
                    .position(x: proxy.size.width * 0.6, y: proxy.size.height * 0.4)
                
                Text("Mangue")
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
                        switch self.contador % 3 {
                        case 1:
                            displayText = "To become a Guardian and be part of our league for the preservation of the environment, it takes a lot of dedication."
                        case 2:
                            displayText = "It's time to get your hands on the trash... Oops! Get your hands dirty. Let's go, click on one of the images and start your journey..."
                        
                        default:
                            displayText = "Our rivers, mangroves and seas are dirty and polluted. That's sad! We need to change this reality before it's too late! Are you willing to help me?"
                        }
                    }
                
            }
        }
    }
}
