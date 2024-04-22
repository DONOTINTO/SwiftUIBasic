//
//  TamagochiView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/18/24.
//

import SwiftUI

/*
 @State: 데이터에 대한 변경 상태를 저장하고 관찰
 - 뷰에 대한 상태를 저장하기 위한 목적으로 설계
 - 상태 프로퍼티(State Property)
 - 뷰에 대한 Source of Truth
 */
struct TamagochiView: View {
    
    @State private var riceCount = 10
    @State private var waterCount = 0
    @State private var isOn = true
    @State private var inputText = "HI"
    
    var body: some View {
        VStack {
            Toggle("스위치", isOn: $isOn)
            TextField("밥알 갯수 직접 입력하기", text: $inputText)
                .border(.blue)
                .font(.title)
            SecureField("Secure 테스트", text: $inputText)
            Text("밥알: \(riceCount)개")
            Button("밥알 갯수") {
                riceCount += 1
                isOn = true
            }
            Text("물방울: \(waterCount)개")
            Button("물방울") {
                waterCount += 1
                isOn = true
            }
            TamagochiButtonView(rice: $riceCount, water: $waterCount)
        }
    }
}

struct TamagochiButtonView: View {
    
    @Binding var rice: Int
    @Binding var water: Int
    
    var body: some View {
        HStack {
            Text("밥알 \(rice), 물방울 \(water)")
            Button("밥알") {
                rice += 1
            }
            Button("물방울") {
                water += 1
            }
        }.background(Color.yellow)
    }
}

#Preview {
    TamagochiView()
}
