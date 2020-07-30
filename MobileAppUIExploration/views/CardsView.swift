//
//  CardsView.swift
//  MobileAppUIExploration
//
//  Created by Raphael Cerqueira on 30/07/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CardsView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Recomended Products")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(Color("pink"))
                    .padding(.leading, 30)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {
                        CardView(imageName: "geometry", title: "Geometry 3D Elements", text: "Hold up a rectangular piece of paper and ask all the students.")
                        
                        CardView(imageName: "abstract", title: "Abstract 3D Elements", text: "An abstract may act as stand-alone entity  the instead of a full paper.")
                    }
                    .padding(.horizontal, 30)
                }
            }
        }
    }
}

struct CardView: View {
    var imageName: String
    var title: String
    var text: String
    
    var body: some View {
        VStack {
            Image(self.imageName)
                .resizable()
            VStack(alignment: .leading) {
                Text(self.title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(Color("pink"))
                    .padding(.horizontal, 10)
                
                Text(self.text)
                    .font(.system(size: 15, weight: .medium, design: .rounded))
                    .foregroundColor(Color("pink"))
                    .lineLimit(3)
                    .padding(.top, 5)
                    .padding(.leading, 10)
                    .padding(.bottom, 15)
            }
        }
        .frame(width: 280, height: 340)
        .background(Color.white)
        .cornerRadius(30)
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
