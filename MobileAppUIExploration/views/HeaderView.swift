//
//  HeaderView.swift
//  MobileAppUIExploration
//
//  Created by Raphael Cerqueira on 30/07/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Good morning,")
                    .font(.system(size: 19, weight: .medium, design: .rounded))
                
                Text("Shaileen")
                    .font(.system(size: 28, weight: .medium, design: .rounded))
                    .padding(.top, 5)
            }
            .foregroundColor(Color("pink"))
            
            Spacer()
            
            Image("shaileen")
                .resizable()
                .frame(width: 50, height: 50)
        }
        .padding(.horizontal, 30)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
