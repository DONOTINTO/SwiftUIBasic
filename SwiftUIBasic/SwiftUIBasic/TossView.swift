//
//  TossView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/17/24.
//

import SwiftUI

struct TossView: View {
    
    let icon: String
    let name: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .background(.cyan)
                .padding()
            Spacer().frame(height: 10)
            Text(name)
        }.background(.yellow)
    }
}

#Preview {
    TossView(icon: "star", name: "123")
}
