//
//  StartView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/18/24.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        TabView {
            
            TamagochiView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            RenderView()
                .tabItem {
                    Image(systemName: "star.fill")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    StartView()
}
