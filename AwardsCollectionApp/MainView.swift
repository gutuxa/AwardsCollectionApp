//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAward ? 2 : 1)
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                }
            }
            
            Spacer()
            if showAward {
                HeartView(width: 250, height: 250)
                    .transition(.heartbeat)
            }
            Spacer()
        }
        .font(.headline)
        .padding()
        
    }
    
    private func buttonAction() {
        withAnimation {
            showAward.toggle()
        }
    }
}

extension AnyTransition {
    static var heartbeat: AnyTransition {
        let insertion = AnyTransition.opacity
            .combined(with: .scale)
            .animation(
                .interpolatingSpring(
                    mass: 0.3,
                    stiffness: 13,
                    damping: 2
                )
            )
        
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
