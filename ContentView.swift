import SwiftUI

struct ContentView: View {
    @State private var displayText = "Our rivers, mangroves and seas are dirty and polluted. That's sad! We need to change this reality before it's too late! Are you willing to help me?"
    
    @State private var contador = 0
    
    @State private var showingAlert = false



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
                                        displayText = "To become a Guardian and be part of our league for the preservation of the environment, it takes a lot of dedication."
                                    case 2:
                                        displayText = "It's time to get your hands on the trash... Oops! Get your hands dirty. Let's go, click on one of the images and start your journey..."
                                    default:
                                        displayText = "It's time to get your hands on the trash... Oops! Get your hands dirty. Let's go, click on one of the images and start your journey..."
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
                    }
                    
                    NavigationLink(destination: TownView()) {
                        Image(uiImage: #imageLiteral(resourceName: "town_bubble.png"))
                            .resizable()
                            .frame(width: proxy.size.width * 0.22, height: proxy.size.width * 0.22)
                    }
                    
                    NavigationLink(destination: MangroveView()) {
                        Image(uiImage: #imageLiteral(resourceName: "mangue_bubble.png"))
                            .resizable()
                            .frame(width: proxy.size.width * 0.22, height: proxy.size.width * 0.22)
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
