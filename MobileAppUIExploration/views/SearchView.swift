//
//  SearchView.swift
//  MobileAppUIExploration
//
//  Created by Raphael Cerqueira on 30/07/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack {
            Text("Search for 3D products")
                .foregroundColor(.gray)
                .font(.system(size: 15))
                .padding(.leading, 20)
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .foregroundColor(Color("pink"))
                .padding(.trailing, 20)
        }
        .frame(width: 350, height: 54)
        .background(Color.white)
        .cornerRadius(14)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
