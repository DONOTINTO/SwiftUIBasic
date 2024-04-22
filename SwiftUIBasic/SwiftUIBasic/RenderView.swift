//
//  RenderView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/17/24.
//

import SwiftUI

struct RenderView: View {
    
    @State var age = 20
    @State private var isPresented = false
    
    var jack: some View {
        Text("Jack \(age)")
            .background(Color.random())
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Hue: \(age)")
                .background(Color.random())
            
            jack
            
            Text("Bran")
                .background(Color.random())
            
            DenView(age: $age)
            
            Button("버튼 클릭") {
                age = Int.random(in: 1 ... 100)
            }
            Button("화면 전환") {
                isPresented.toggle()
            }
        }
        .font(.title)
        .fullScreenCover(isPresented: $isPresented, content: {
            TamagochiView()
        })
    }
}

extension Color {
    static func random() -> Color {
        return Color(red: .random(in: 0 ... 1),
                     green: .random(in: 0 ... 1),
                     blue: .random(in: 0 ... 1))
    }
}

#Preview {
    RenderView()
}

struct DenView: View {
    
    @Binding var age: Int
    
    var body: some View {
        Text("Den \(age)")
            .background(Color.random())
    }
}
