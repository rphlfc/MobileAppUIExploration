//
//  ButtonBarView.swift
//  MobileAppUIExploration
//
//  Created by Raphael Cerqueira on 30/07/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ButtonBarView: View {
    var body: some View {
        HStack(spacing: 30) {
            PinkButton(imageName: "clock", title: "Recent", isSelected: true)
            PinkButton(imageName: "flame", title: "Trending", isSelected: false)
            PinkButton(imageName: "star", title: "Popular", isSelected: false)
            PinkButton(imageName: "suit.diamond", title: "Premium", isSelected: false)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 30)
    }
}

struct PinkButton: View {
    var imageName: String
    var title: String
    
    @State var isSelected: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                self.isSelected = !self.isSelected
            }) {
                VStack {
                    VStack {
                        Image(systemName: self.imageName)
                            .font(.system(size: 24))
                            .foregroundColor(self.isSelected ? .white : Color("gray"))
                    }
                    .frame(width: 60, height: 60)
                    .background(self.isSelected ? Color("pink") : .white)
                    .cornerRadius(10)
                }
            }
            
            Text(self.title)
            .font(.system(size: 12, weight: .bold, design: .rounded))
            .foregroundColor(self.isSelected ? Color("pink") : Color("gray"))
            .padding(.top, 10)
        }
    }
}

struct ButtonBarView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBarView()
    }
}
