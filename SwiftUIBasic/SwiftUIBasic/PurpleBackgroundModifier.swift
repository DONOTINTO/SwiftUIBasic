//
//  PurpleBackgroundModifier.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/17/24.
//

import SwiftUI

struct PurpleBackgroundModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding()
            .foregroundStyle(.white)
            .background(.purple)
            .clipShape(.capsule)
    }
}

extension View {
    
    func asPurpleBackground() -> some View {
        modifier(PurpleBackgroundModifier())
    }
}
