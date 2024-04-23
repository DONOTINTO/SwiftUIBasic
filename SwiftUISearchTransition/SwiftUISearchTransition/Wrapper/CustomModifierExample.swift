//
//  CustomModifierExample.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/22/24.
//

import SwiftUI

struct PointBackground: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding(10)
            .background(Color.yellow)
            .foreground(.black)
            .clipShape(.capsule)
    }
}

extension View {
    
    func asPointBackground() -> some View {
        modifier(PointBackground())
    }
}
