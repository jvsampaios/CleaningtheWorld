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
    
    @State private var displayText = "We are on the beach! One of my favorite places of all world. But look at that! It's all dirty."
    
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
        Image(uiImage: #imageLiteral(resourceName: "lixo6.png"))
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
                            print("Sumiu", controlCan)


                        }
                    }
            )
            .onAppear{
                positionTrash1 = CGPoint(
                    x: proxy.size.width * 0.1, y: proxy.size.height * 0.55
                )
            }
    }
    
    func lixo2(proxy: GeometryProxy) -> some View {      Image(uiImage: #imageLiteral(resourceName: "lixo7.png"))
            .resizable()
            .frame(width: proxy.size.width * 0.10, height: proxy.size.width * 0.10)
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
                            print("Sumiu", controlCan)
                            
                            
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
        
     Image(uiImage: #imageLiteral(resourceName: "lixo6.png"))
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
                        print("Sumiu", controlCan)
                        
                        
                    }
                }
        )
        .onAppear{
            positionTrash3 = CGPoint(
                x: proxy.size.width * 0.6, y: proxy.size.height * 0.60
            )
        }
}
    
    func lixo4(proxy: GeometryProxy) -> some View {      Image(uiImage: #imageLiteral(resourceName: "lixo7.png"))
            .resizable()
            .frame(width: proxy.size.width * 0.10, height: proxy.size.width * 0.10)
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
                            print("Sumiu", controlCan)
                            
                            
                        }
                    }
            )
            .onAppear{
                positionTrash4 = CGPoint(
                    x: proxy.size.width * 0.60, y: proxy.size.height * 0.35
                )
            }
    }
    
    func lixo5(proxy: GeometryProxy) -> some View {
        
     Image(uiImage: #imageLiteral(resourceName: "lixo6.png"))
        .resizable()
        .frame(width: proxy.size.width * 0.15, height: proxy.size.width * 0.15)
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
                        print("Sumiu", controlCan)
                        
                        
                    }
                }
        )
        .onAppear{
            positionTrash5 = CGPoint(
                x: proxy.size.width * 0.8, y: proxy.size.height * 0.35
            )
        }
}
            
    @State var showContentView: Bool = false
    
    var body: some View {
        GeometryReader { proxy in
            
            ZStack {
                
                VStack {
                    Color(red: 200/255, green: 224/255, blue: 255/255)
                    Color(red: 238/255, green: 217/255, blue: 170/255)
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
                                    if(self.control >= 545){
                                        displayText = "Congrats! You cleaned all the beach!"
                            
                                    }
                                    else {
                                        switch self.control % 9 {
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
                
                Image(uiImage: #imageLiteral(resourceName: "paper.png"))
                    .resizable()
                    .frame(width: proxy.size.width * canProportion, height: proxy.size.width * canProportion)
                    .position(x: canPosition.x, y: canPosition.y)
                
                    .onAppear{
                        canPosition = CGPoint(
                            x: proxy.size.width * 0.8, y: proxy.size.height * 0.60)
                        
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
                message: Text("Awesome! You cleaned up the whole beach and helped me save all my little sea friends. Do you want to clean up more places with me?"),
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


