//
//  BeachView.swift
//  Cleaning the World
//
//  Created by user on 11/04/23.
//

import Foundation
import SwiftUI

struct BeachView: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "beach.png"))
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .position(x: proxy.size.width * 0.5, y: proxy.size.height * 0.48)

                Image(uiImage: #imageLiteral(resourceName: "plastic.png"))
                    .resizable()
                    .frame(width: proxy.size.width * 0.15, height: proxy.size.height * 0.15)
                    .position(x: proxy.size.width * 0.8, y: proxy.size.height * 0.6)
                
                Text("teste")
                    .font(.largeTitle)
            }
        }
    }
}
