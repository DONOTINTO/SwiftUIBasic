//
//  CounterView.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/26/24.
//

import SwiftUI
import UIKit

struct CounterView: View {
    
    @State private var incrementCount = 0
    
    var body: some View {
        VStack {
            MyWebView(url: "https://www.naver.com")
            Text("웹뷰 띄우기")
                .wrapToButton {
                    print("클릭)")
                }
                .padding()
            Text("\(incrementCount)번 클릭")
            Text("클릭")
                .wrapToButton {
                    incrementCount += 1
                }
            ChildCounterView()
                .padding()
                .background(.gray)
        }
    }
}

class ChildCountViewModel: ObservableObject {
    
    @Published var incrementCount = 0
    
    func addCount() {
        incrementCount += 1
    }
}

struct ChildCounterView: View {
    
    @StateObject var viewModel = ChildCountViewModel()
    
    var body: some View {
        VStack {
            Text("\(viewModel.incrementCount)번 클릭")
            Text("클릭")
                .wrapToButton {
                    viewModel.addCount()
                }
        }
    }
}

#Preview {
    CounterView()
}
