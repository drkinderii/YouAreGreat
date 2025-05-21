//
//  ContentView.swift
//  YouAreGreat
//
//  Created by Dennis Kinder on 5/19/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    @State var imageName = ""
    let image0 =  "image0"
    let image01 = "image1"
    let image1 = "sun.max.fill"
    let image2 = "hand.thumbsup"
    let text1 = "You Are Awesome!!"
    let text2 = "You Are Great!!"
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 15)
//            Image(systemName: imageName)
//                .resizable()
//                .scaledToFit()
//                .imageScale(.large)
//                .foregroundStyle(.orange)
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Spacer()
            Button("Press Me!") {
                if imageName == image0 {
                    imageName = image01
                    text = text2
                } else {
                    imageName = image0
                    text = text1
                }
            }
            .buttonStyle(.borderedProminent)
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
