//
//  ButtonWrapper.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/22/24.
//

import SwiftUI

struct ButtonWrapper: ViewModifier {
    
    let action: () -> Void
    
    func body(content: Content) -> some View {
        
        Button(action: action,
               label: {
            content
        })
    }
}

extension View {
    func wrapToButton(_ action: @escaping () -> Void) -> some View {
        modifier(ButtonWrapper(action: action))
    }
}
