//
//  NavBarView.swift
//  MobileAppUIExploration
//
//  Created by Raphael Cerqueira on 30/07/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
        HStack(spacing: 60) {
            NavBarItemView(imageName: "house", isSelected: true)
            NavBarItemView(imageName: "heart", isSelected: false)
            NavBarItemView(imageName: "cube", isSelected: false)
            NavBarItemView(imageName: "person", isSelected: false)
        }
        .frame(height: 84)
        .frame(maxWidth: .infinity)
        .background(Color("pink"))
        .cornerRadius(20)
    }
}

struct NavBarItemView: View {
    var imageName: String
    @State var isSelected: Bool
    
    var body: some View {
        Button(action: {
            self.isSelected = !self.isSelected
        }) {
            VStack {
                Image(systemName: self.imageName)
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(self.isSelected ? 1 : 0)
                    .padding(.top, 8)
            }
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
