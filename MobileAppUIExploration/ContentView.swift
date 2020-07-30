//
//  ContentView.swift
//  MobileAppUIExploration
//
//  Created by Raphael Cerqueira on 30/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                HeaderView()
                
                Spacer()
                SearchView()
                
                Spacer()
                ButtonBarView()
                
                Spacer()
                CardsView()
                    .padding(.top, 30)
                
                Spacer()
                NavBarView().offset(y: 35)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
