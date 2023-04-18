import SwiftUI

struct ContentView: View {
    @State private var displayText = "Hello! My name is Crabbert and I am a proud mangrove crab! I wear a very special hat called a 'cangaceiro hat' that is popular in the northeastern region of Brazil."
    
    @State private var contador = 0
    
    @State private var showingAlert = false
    
    @State private var booling = false
    
    @State private var booling2 = false

    @State private var booling3 = false




//    @State private var displayText2 = "To become a Guardian and be part of our league for the preservation of the environment, it takes a lot of dedication."
//
//    @State private var displayText3 = "It's time to get your hands on the trash... Oops! Get your hands dirty. Let's go, click on one of the images and start your journey..."
    
    @State var changeFont: Bool = false
    
    var body: some View {
        
        GeometryReader { proxy in
            ZStack {
                
                // TODO: acertar as cores
                VStack {
                    Color(red: 0, green: 138/255, blue: 204/255)
                    Color(red: 246/255, green: 234/255, blue: 152/255)
                }
                .ignoresSafeArea()
                
                VStack(spacing: 0) {

                    Image("ocean")
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
                                //.position(x: proxy.size.width * 0.85, y: proxy.size.height * 0.75)
                                .onTapGesture {
                                    self.contador += 1
                                    switch self.contador {
                                    case 1:
                                        displayText = "But I am not just any crab. I am on a mission to protect my home and my fellow animal friends from harm."
                                    case 2:
                                        displayText = "You see, our habitat is threatened by pollution and improper waste disposal. It's not just an eyesore, but it also harms the environment and the animals that live here."
                                    case 3:
                                        displayText = "I love my home, and I want to make sure it's a safe and clean place for all of us to live. That's why I want to teach everyone, especially the young ones, about the importance of proper waste disposal and taking care of our environment."
                                    case 4:
                                        displayText = "So come along with me, and let's work together to keep our homes clean and healthy!"
                                    default:
                                        displayText = "Click on one of the images and start your journey..."
                                    }
                                }
                                .padding()
                        }
                    }
                }
                
                HStack{
                    NavigationLink(destination: BeachView()) {
                        Image(uiImage: #imageLiteral(resourceName: "beach_bubble.png"))
                            .resizable()
                            .frame(width: proxy.size.width * 0.22, height: proxy.size.width * 0.22)
                            .offset(y:booling3 ? -50 : 0)
                            .animation(Animation
                                .easeInOut(duration: 0.5)
                                .repeatForever()
                                .delay(0.3), value: booling3)
                            .onAppear(){
                                self.booling3.toggle()
                            }
                    }
                    
                    NavigationLink(destination: TownView()) {
                        Image(uiImage: #imageLiteral(resourceName: "town_bubble.png"))
                            .resizable()
                            .frame(width: proxy.size.width * 0.22, height: proxy.size.width * 0.22)
                            .offset(y:booling ? -50 : 0)
                            .animation(Animation
                                .easeInOut(duration: 0.5)
                                .repeatForever()
                                .delay(0.6), value: booling)
                            .onAppear(){
                                self.booling.toggle()
                            }
                                           }
                    
                    NavigationLink(destination: MangroveView()) {
                        Image(uiImage: #imageLiteral(resourceName: "mangue_bubble.png"))
                            .resizable()
                            .frame(width: proxy.size.width * 0.22, height: proxy.size.width * 0.22)
                            .offset(y:booling2 ? -50 : 0)
                            .animation(Animation
                                .easeInOut(duration: 0.5)
                                .repeatForever()
                                .delay(0.9), value: booling2)
                            .onAppear(){
                                self.booling2.toggle()
                            }
                    }
                }
                
            }
        }
        

    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
