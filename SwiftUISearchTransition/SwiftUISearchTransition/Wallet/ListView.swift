//
//  ListView.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/26/24.
//

import SwiftUI

// 1) UI + Logic 2) State 3) View
class ListViewModel: ObservableObject {
    
    @Published var money: [Money] = []
    
    func shuffleDummyData() {
        money = dummy.shuffled()
    }
}

// @ObservedObject : 뷰가 렌더링될때 인스턴스 새로 생성되어 기존 데이터는 휘발됨
// @StateObject : 초기화 이후 뷰 렌더링과 상관없이 인스턴스 재사용

struct ListView: View {
    
    @StateObject var viewModel = ListViewModel()
    
    var body: some View {
        
        LazyVStack {
            ForEach(viewModel.money, id: \.id) { item in
                rowView(item)
            }
        }
        .onAppear {
            viewModel.shuffleDummyData()
        }
        .refreshable {
            viewModel.shuffleDummyData()
        }
    }
    
    func rowView(_ data: Money) -> some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text("\(data.product)")
                    .font(.body)
                    .fontWeight(.bold)
                Text("\(data.category.rawValue)")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Text("\(data.amountFormat)")
        }.padding(10)
        
    }
}

#Preview {
    ListView()
}
