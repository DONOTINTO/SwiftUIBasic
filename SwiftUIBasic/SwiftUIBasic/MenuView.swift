//
//  MenuView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/17/24.
//

import SwiftUI

struct MenuView: View, MyProtocol {
    
    var nickname: String = "고래밥"
    
    func example(number: Int) {
        print("\(number)")
    }
    
    var iconGroup: some View {
        HStack {
            Image(systemName: "star")
                .background(.green)
            Image(systemName: "xmark")
                .background(.green)
            Image(systemName: "person")
                .background(.green)
        }
    }
    
    var body: some View {
        VStack {
            iconGroup
            profileBanner()
            iconGroup
            PurpleTextView()
            PurpleTextView()
            PurpleButtonView()
            iconGroup
            iconFamily()
        }
    }
    
    func iconFamily() -> some View {
        HStack {
            Image(systemName: "star")
                .background(.brown)
            Image(systemName: "xmark")
                .background(.brown)
            Image(systemName: "person")
                .background(.brown)
        }
    }
    func profileBanner() -> some View {
        HStack(spacing: 20) {
            TossView(icon: "star", name: "고객센터")
            TossView(icon: "person", name: "사람")
            TossView(icon: "star.fill", name: "별")
        }
    }
}

protocol MyProtocol {
    var nickname: String { get set }
    func example(number: Int)
}

#Preview {
    MenuView()
}

struct PurpleTextView: View {
    var body: some View {
        Text("내 신용점수")
            .asPurpleBackground()
    }
}

struct PurpleButtonView: View {
    var body: some View {
        Button("클릭") {
            print("클릭했습니다")
        }.asPurpleBackground()
    }
}
