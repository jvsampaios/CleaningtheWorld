import SwiftUI

struct ContentView: View {
    @State private var displayText = "Our rivers, mangroves and seas are dirty and polluted. That's sad! We need to change this reality before it's too late! Are you willing to help me?"

//    @State private var displayText2 = "To become a Guardian and be part of our league for the preservation of the environment, it takes a lot of dedication."
//
//    @State private var displayText3 = "It's time to get your hands on the trash... Oops! Get your hands dirty. Let's go, click on one of the images and start your journey..."
    
    var body: some View {
        
        GeometryReader { proxy in
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "ocean.png"))
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)

                Text("Cleaning the World")
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                    .position(x: proxy.size.width * 0.5, y: proxy.size.height * 0.3)
                Text("a interactive game")
                    .position(x: proxy.size.width * 0.5, y: proxy.size.height * 0.33)
                
                HStack{
                    NavigationLink(destination: BeachView()) {
                        Image(uiImage: #imageLiteral(resourceName: "beach_bubble.png"))
                            .resizable()
                            .frame(width: proxy.size.width * 0.22, height: proxy.size.height * 0.20)
                    }
                    
                    NavigationLink(destination: TownView()) {
                        Image(uiImage: #imageLiteral(resourceName: "town_bubble.png"))
                            .resizable()
                            .frame(width: proxy.size.width * 0.22, height: proxy.size.height * 0.20)
                    }
                    
                    NavigationLink(destination: MangueView()) {
                        Image(uiImage: #imageLiteral(resourceName: "mangue_bubble.png"))
                            .resizable()
                            .frame(width: proxy.size.width * 0.22, height: proxy.size.height * 0.20)
                    }
                    
                }
                Text(displayText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .frame(width: proxy.size.width * 0.5, height: proxy.size.height * 0.65)
                    .position(x: proxy.size.width * 0.45, y: proxy.size.height * 0.75)

            }
        }
    }
}
    
    


struct BeachView: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "beach.png"))
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .position(x: proxy.size.width * 0.5, y: proxy.size.height * 0.48)

                Text("Beach")
                    .font(.largeTitle)
            }
        }
    }
}

struct TownView: View {
    var body: some View {
        GeometryReader { proxy in
            
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "town.png"))
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .position(x: proxy.size.width * 0.5, y: proxy.size.height * 0.48)

                Text("Town")
                    .font(.largeTitle)
            }
        }
    }
}

struct MangueView: View {
    var body: some View {
        GeometryReader { proxy in
            
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "mangue.png"))
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .position(x: proxy.size.width * 0.5, y: proxy.size.height * 0.48)
                Text("Mangue")
                    .font(.largeTitle)
            }
        }
    }
}


