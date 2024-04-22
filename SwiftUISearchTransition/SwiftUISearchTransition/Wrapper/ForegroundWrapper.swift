//
//  ForegroundWrapper.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/22/24.
//

import SwiftUI

struct ForegroundWrapper: ViewModifier {
    
    let color: Color
    
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .foregroundStyle(color)
        } else {
            content
                .foregroundColor(color)
        }
    }
}

extension View {
    
    func foreground(_ color: Color) -> some View {
        modifier(ForegroundWrapper(color: color))
    }
}
