//
//  WalletView.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/23/24.
//

import SwiftUI

struct WalletView: View {
    
    @State private var isExpandable = false
    
    var body: some View {
        
        VStack {
            topTitle()
            Spacer()
            Text("Animation ON")
                .wrapToButton {
                    withAnimation(.easeIn) {
                        isExpandable = true
                    }
                }
            Text("Animation OFF")
                .wrapToButton {
                    withAnimation(.easeOut) {
                        isExpandable = false
                    }
                }
        }
    }
    
    func topTitle() -> some View {
        Text("Jack Wallet")
            .font(.largeTitle)
            .bold()
            .frame(maxWidth: .infinity,
                   alignment: isExpandable ? .leading : .center)
            .overlay(alignment: .trailing, content: {
                topOverlayButton()
            })
            .padding()
            .background(.yellow)
    }
    
    func topOverlayButton() -> some View {
        Image(systemName: "plus")
            .foregroundStyle(.white)
            .padding(5)
            .background(.black, in: .circle)
            .opacity(isExpandable ? 1 : 0)
            .rotationEffect(.degrees (isExpandable ? 225 : 45))
            .wrapToButton {
                withAnimation {
                    isExpandable = false
                }
            }
    }
}

#Preview {
    WalletView()
}
