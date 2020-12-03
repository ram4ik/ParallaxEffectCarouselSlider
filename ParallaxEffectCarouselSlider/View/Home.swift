//
//  Home.swift
//  ParallaxEffectCarouselSlider
//
//  Created by ramil on 03.12.2020.
//

import SwiftUI

struct Home: View {
    @State var selected: Int = 0
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    var body: some View {
        TabView(selection: $selected) {
            ForEach(1...4, id: \.self) { index in
                GeometryReader { reader in
                    Image("\(index)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(x: -reader.frame(in: .global).minX)
                        .frame(width: width, height: height / 2)
                        .cornerRadius(15)
                }
                .frame(height: height / 2)
                .cornerRadius(15)
                .padding(10)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: -5)
                .padding(.horizontal, 25)
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
