//
//  BasicView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/15/24.
//

import SwiftUI

// 주의사항
// 버전
// 적용순서

struct BasicView: View {
    var body: some View {
        VStack {
            HStack {
                Text("123")
                Text("그대는 내 사랑~~ 내 하나뿐인 사~~랑~ 내하나뿐인 사ㅏ아랑~")
            }
            .foregroundStyle(.orange)
            Text("222")
        }.foregroundStyle(.blue)
        Image(systemName: "star.fill")
        
        HStack {
            Text("Hello1")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .background(.blue)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(.red)
            
            Text("Hello2")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .background(.black)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .border(.blue, width: 5)
        }
    }
}

#Preview {
    BasicView()
}
