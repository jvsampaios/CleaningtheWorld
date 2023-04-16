//
//  MangroveView.swift
//  Cleaning the World
//
//  Created by user on 11/04/23.
//

import Foundation
import SwiftUI
import UIKit

struct MangroveView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var control = 0
    
    @State private var displayText = "We are on the mangrove florest! I live here. I'm so happy you came to visit me today!."
    
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
        Image(uiImage: #imageLiteral(resourceName: "lixo12.png"))
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
                    x: proxy.size.width * 0.1, y: proxy.size.height * 0.55
                )
            }
    }
    
    func lixo2(proxy: GeometryProxy) -> some View {      Image(uiImage: #imageLiteral(resourceName: "lixo11.png"))
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
                            
                            
                        }
                    }
            )
            .onAppear{
                positionTrash2 = CGPoint(
                    x: proxy.size.width * 0.4, y: proxy.size.height * 0.60
                )
            }
    }
    
    func lixo3(proxy: GeometryProxy) -> some View {
        
     Image(uiImage: #imageLiteral(resourceName: "lixo11.png"))
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
                x: proxy.size.width * 0.6, y: proxy.size.height * 0.55
            )
        }
}
    
    func lixo4(proxy: GeometryProxy) -> some View {      Image(uiImage: #imageLiteral(resourceName: "lixo13.png"))
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
                            
                            
                        }
                    }
            )
            .onAppear{
                positionTrash4 = CGPoint(
                    x: proxy.size.width * 0.80, y: proxy.size.height * 0.55
                )
            }
    }
    
    func lixo5(proxy: GeometryProxy) -> some View {
        
     Image(uiImage: #imageLiteral(resourceName: "lixo12.png"))
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
                        
                        
                    }
                }
        )
        .onAppear{
            positionTrash5 = CGPoint(
                x: proxy.size.width * 0.9, y: proxy.size.height * 0.55
            )
        }
}
            
    @State var showContentView: Bool = false
    
    var body: some View {
        GeometryReader { proxy in
            
            ZStack {
                
                VStack {
                    Color(red: 23/255, green: 93/255, blue: 58/255)
                    Color(red: 44/255, green: 134/255, blue: 154/255)
                }
                .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
                    Image("mangue")
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
                                    
                                        switch self.control{
                                        case 1:
                                            displayText = "You see, a lot of people don't realize that when they throw their trash in the water or on the shore, it can harm all the creatures that live here in the mangroves."
                                        case 2:
                                            displayText = "There are so many amazing animals that call this place home, like the fiddler crabs, mudskippers, and even the beautiful mangrove trees themselves."
                                        case 3:
                                            displayText = "But when we have to swim through piles of garbage or get caught up in plastic bags, it makes life really difficult for us."
                                            
                                        case 4:
                                            displayText = "Plus, some of the things people throw away can be really dangerous for us. Chemicals and pollutants can seep into the water and hurt our bodies or make us sick."
                                            
                                        case 5:
                                            displayText = "So, if you really want to help me and all my friends in the mangrove, there's a really simple thing you can do: throw your trash away in the proper place!"
                                            
                                        case 6:
                                            displayText = "Whether you're at the beach or near a river, make sure to use a garbage can or recycling bin."
                                            
                                        case 7:
                                            displayText = "And if you ever see any litter lying around, you can be a hero and pick it up yourself! Every little bit helps."
                                            
                                        case 8:
                                            displayText = "Let's pratice? Clean the mangrove by dragging all that trash and dropping it in the proper trash can."
                                            
                                        default:
                                            displayText = "Thanks for listening, my little friend. Together, we can keep the mangroves clean and safe for all the creatures who live here!"
                                        
                                    }
                                    
                                }
                        }
                    }
                }
                
                Image(uiImage: #imageLiteral(resourceName: "metal.png"))
                    .resizable()
                    .frame(width: proxy.size.width * canProportion, height: proxy.size.height * canProportion)
                    .position(x: canPosition.x, y: canPosition.y)
                
                    .onAppear{
                        canPosition = CGPoint(
                            x: proxy.size.width * 0.6, y: proxy.size.height * 0.40)
                        
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
                message: Text("Awesome! You cleaned up the whole mangrove and helped me save all my friends. Do you want to clean up more places with me?"),
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


struct MangroveView_Previews: PreviewProvider {
    static var previews: some View {
        MangroveView()
            .previewInterfaceOrientation(.portrait)
        MangroveView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}



