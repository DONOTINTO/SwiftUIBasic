//
//  NavigationBarWrapper.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/22/24.
//

import SwiftUI

struct NavigationBarWrapper<L: View, T: View>: ViewModifier {
    
    let leadingImage: L
    let trailingImage: T
    
    init(@ViewBuilder leadingImage: () -> L, @ViewBuilder trailingImage: () -> T) {
        self.leadingImage = leadingImage()
        self.trailingImage = trailingImage()
    }
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    leadingImage
                }
                ToolbarItem(placement: .topBarTrailing) {
                    trailingImage
                }
            }
    }
}

extension View {
    
    func navigationBar(@ViewBuilder _ leading: () -> some View, @ViewBuilder _ trailing: () -> some View) -> some View {
        modifier(NavigationBarWrapper(leadingImage: leading, trailingImage: trailing))
    }
}
