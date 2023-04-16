//
//  BeachView.swift
//  Cleaning the World
//
//  Created by user on 11/04/23.
//

import Foundation
import SwiftUI
import UIKit

struct TownView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var control = 0
    
    @State private var displayText = "We are on the the town! It's your home and you have to take care of it."
    
    @State private var positionTrash1 = CGPoint.zero
    
    @State private var positionTrash2 = CGPoint.zero
    
    @State private var positionTrash3 = CGPoint.zero
    
    @State private var positionTrash4 = CGPoint.zero
    
    @State private var positionTrash5 = CGPoint.zero
    
    @State private var canPosition = CGPoint.zero
    
    @State private var controlCan = 0
    
    @State private var entrou = false
    
    @State private var canProportion = 0.15
    
    @State private var canSizeWidth = 0.0

    @State private var canSizeHeight = 0.0
    
    @State private var showingAlert = false

    @State private var showNewView = false

    func lixo1(proxy: GeometryProxy) -> some View {
        Image(uiImage: #imageLiteral(resourceName: "lixo1.png"))
            .resizable()
            .frame(width: proxy.size.width * 0.15, height: proxy.size.width * 0.15)
            .position(x: positionTrash1.x, y: positionTrash1.y)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        positionTrash1 = value.location
            
                    })
                    .onEnded { _ in
                        
                        canSizeWidth = proxy.size.width * canProportion
                        canSizeHeight = proxy.size.height * canProportion
                        
                        
                        if ((positionTrash1.x + canSizeWidth/2 >= canPosition.x) && (positionTrash1.y + canSizeHeight/2 >= canPosition.y) && (positionTrash1.x < canPosition.x + canSizeWidth/2) && (positionTrash1.y < canPosition.y + canSizeHeight/2)) {

                            positionTrash1 = CGPoint(
                                x: -1000, y: -1000
                            )
                            controlCan+=1


                        }
                    }
            )
            .onAppear{
                positionTrash1 = CGPoint(
                    x: proxy.size.width * 0.3, y: proxy.size.height * 0.55
                )
            }
    }
    
    func lixo2(proxy: GeometryProxy) -> some View {      Image(uiImage: #imageLiteral(resourceName: "lixo2.png"))
            .resizable()
            .frame(width: proxy.size.width * 0.20, height: proxy.size.width * 0.20)
            .position(x: positionTrash2.x, y: positionTrash2.y)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        positionTrash2 = value.location
                        
                    })
                    .onEnded { _ in
                        
                        canSizeWidth = proxy.size.width * canProportion
                        canSizeHeight = proxy.size.height * canProportion
                        
                        
                        if ((positionTrash2.x + canSizeWidth/2 >= canPosition.x) && (positionTrash2.y + canSizeHeight/2 >= canPosition.y) && (positionTrash2.x < canPosition.x + canSizeWidth/2) && (positionTrash2.y < canPosition.y + canSizeHeight/2)) {
                            
                            positionTrash2 = CGPoint(
                                x: -1000, y: -1000
                            )
                            controlCan+=1
                                                    
                        }
                    }
            )
            .onAppear{
                positionTrash2 = CGPoint(
                    x: proxy.size.width * 0.4, y: proxy.size.height * 0.55
                )
            }
    }
    
    func lixo3(proxy: GeometryProxy) -> some View {
        
     Image(uiImage: #imageLiteral(resourceName: "lixo1.png"))
        .resizable()
        .frame(width: proxy.size.width * 0.15, height: proxy.size.width * 0.15)
        .position(x: positionTrash3.x, y: positionTrash3.y)
        .gesture(
            DragGesture()
                .onChanged({ value in
                    positionTrash3 = value.location
                    
                })
                .onEnded { _ in
                    
                    canSizeWidth = proxy.size.width * canProportion
                    canSizeHeight = proxy.size.height * canProportion
                    
                    
                    if ((positionTrash3.x + canSizeWidth/2 >= canPosition.x) && (positionTrash3.y + canSizeHeight/2 >= canPosition.y) && (positionTrash3.x < canPosition.x + canSizeWidth/2) && (positionTrash3.y < canPosition.y + canSizeHeight/2)) {
                        
                        positionTrash3 = CGPoint(
                            x: -1000, y: -1000
                        )
                        controlCan+=1
                    }
                }
        )
        .onAppear{
            positionTrash3 = CGPoint(
                x: proxy.size.width * 0.6, y: proxy.size.height * 0.60
            )
        }
}
    
    func lixo4(proxy: GeometryProxy) -> some View {      Image(uiImage: #imageLiteral(resourceName: "lixo2.png"))
            .resizable()
            .frame(width: proxy.size.width * 0.20, height: proxy.size.width * 0.20)
            .position(x: positionTrash4.x, y: positionTrash4.y)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        positionTrash4 = value.location
                        
                    })
                    .onEnded { _ in
                        
                        canSizeWidth = proxy.size.width * canProportion
                        canSizeHeight = proxy.size.height * canProportion
                        
                        
                        if ((positionTrash4.x + canSizeWidth/2 >= canPosition.x) && (positionTrash4.y + canSizeHeight/2 >= canPosition.y) && (positionTrash4.x < canPosition.x + canSizeWidth/2) && (positionTrash4.y < canPosition.y + canSizeHeight/2)) {
                            
                            positionTrash4 = CGPoint(
                                x: -1000, y: -1000
                            )
                            controlCan+=1
                            
                            
                        }
                    }
            )
            .onAppear{
                positionTrash4 = CGPoint(
                    x: proxy.size.width * 0.40, y: proxy.size.height * 0.45
                )
            }
    }
    
    func lixo5(proxy: GeometryProxy) -> some View {
        
     Image(uiImage: #imageLiteral(resourceName: "lixo2.png"))
        .resizable()
        .frame(width: proxy.size.width * 0.20, height: proxy.size.width * 0.20)
        .position(x: positionTrash5.x, y: positionTrash5.y)
        .gesture(
            DragGesture()
                .onChanged({ value in
                    positionTrash5 = value.location
                    
                })
                .onEnded { _ in
                    
                    canSizeWidth = proxy.size.width * canProportion
                    canSizeHeight = proxy.size.height * canProportion
                    
                    
                    if ((positionTrash5.x + canSizeWidth/2 >= canPosition.x) && (positionTrash5.y + canSizeHeight/2 >= canPosition.y) && (positionTrash5.x < canPosition.x + canSizeWidth/2) && (positionTrash5.y < canPosition.y + canSizeHeight/2)) {
                        
                        positionTrash5 = CGPoint(
                            x: -1000, y: -1000
                        )
                        controlCan+=1
                        
                        
                    }
                }
        )
        .onAppear{
            positionTrash5 = CGPoint(
                x: proxy.size.width * 0.2, y: proxy.size.height * 0.60
            )
        }
}
            
    @State var showContentView: Bool = false
    
    var body: some View {
        GeometryReader { proxy in
            
            ZStack {
                
                VStack {
                    Color(red: 138/255, green: 225/255, blue: 245/255)
                    Color(red: 31/255, green: 29/255, blue: 30/255)
                }
                .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
                    Image("town")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                    
                    ZStack {
                        Image("chat")
                            .resizable()
                            .scaledToFit()
                        HStack {
                            Spacer()
                                .frame(maxWidth: proxy.size.width * 0.2)
                            Text(displayText)
                                .padding()
                            //.frame(width: proxy.size.width * 0.5, height: proxy.size.height * 0.65)
                            //.position(x: proxy.size.width * 0.45, y: proxy.size.height * 0.75)
                                .foregroundColor(.blue)
                                .font(
                                    .system(
                                        size: proxy.size.width * 0.025,
                                        weight: .medium,
                                        design: .rounded
                                    )
                                )
                            
                            Image("skip")
                                .resizable()
                                .frame(width: proxy.size.width * 0.10, height: proxy.size.width * 0.10)
                                .onTapGesture {
                                    self.control += 1
                                    
                                        switch self.control {
                                        case 1:
                                            displayText = "Unfortunately, many people don't realize the impact of their actions on the environment. When we throw trash on the streets or in the rivers, it not only looks bad, but it also affects the animals and plants that live there."
                                        case 2:
                                            displayText = "Plastic bags and other garbage can harm animals like birds, fish, and even turtles."
                                        case 3:
                                            displayText = "In addition, poor waste disposal can cause problems like flooding during heavy rains. When the drains are clogged with trash, the water has nowhere to go and can overflow into the streets and buildings."
                                            
                                        case 4:
                                            displayText = "But there are things we can all do to help! We can start by properly disposing of our trash and recycling whenever possible. We can also pick up litter when we see it and encourage others to do the same."
                                            
                                        case 5:
                                            displayText = "Let's work together to keep our urban environment clean and safe for all the animals and people that live here."
                                            
                                        default:
                                            displayText = "Clean our town by dragging all that trash and dropping it in the proper trash can."
                                        }
                                    }
                                    
                                
                        }
                    }
                }
                
                Image(uiImage: #imageLiteral(resourceName: "paper.png"))
                    .resizable()
                    .frame(width: proxy.size.width * canProportion, height: proxy.size.height * canProportion)
                    .position(x: canPosition.x, y: canPosition.y)
                
                    .onAppear{
                        canPosition = CGPoint(
                            x: proxy.size.width * 0.8, y: proxy.size.height * 0.55)
                        
                    }
                
                lixo1(proxy: proxy)
                
                lixo2(proxy: proxy)
                
                lixo3(proxy: proxy)
                
                lixo4(proxy: proxy)
                
                lixo5(proxy: proxy)

                
            
                
            }
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("Congratulations!"),
                message: Text("Awesome! You cleaned up the whole town and helped me save all our friends. Do you want to clean up more places with me?"),
                dismissButton: .default(Text("Let's go")) {
                    dismiss()
                }
            )
            
        }
        
        .onChange(of: controlCan) { newValue in
            showingAlert = newValue >= 5
            if newValue >= 5 {
                    displayText = "Great job! You cleaned up a lot. Let's go to another place."
                }

        }
    }
    
}



struct TownView_Preview: PreviewProvider {
    static var previews: some View {
        TownView()
            .previewInterfaceOrientation(.portrait)
        TownView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


