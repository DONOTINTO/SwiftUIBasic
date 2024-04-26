//
//  HistoryView.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/23/24.
//

import SwiftUI

struct HistoryView: View {
    
    @State var totalMoney = 346000000
    
    var body: some View {
        
        NavigationStack {
            ScrollView(.vertical) {
                
                VStack {
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach( 0 ..< 5) { _ in
                                bannerView()
                                    .containerRelativeFrame(.horizontal)
                                    .onTapGesture {
                                        let value = Int.random(in: 100 ... 9999999999)
                                        totalMoney = value
                                    }
                            }
                        }
                        .scrollTargetLayout()
                    }
                        .scrollTargetBehavior(.viewAligned)
                        .frame(height: 150)
                        .scrollIndicators(.hidden)
                    ListView()
                }
                .padding(10)
            }
            .navigationTitle("GOODS99j WALLET")
            
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
    
    func bannerView() -> some View {
        Rectangle()
            .fill(Color.random())
            .overlay(alignment: .leading) {
                Circle()
                    .fill(.white.opacity(0.2))
                    .scaleEffect(1.5)
                    .offset(y: 20)
                
                VStack(alignment: .leading) {
                    Text("나의 소비내역")
                        .font(.callout)
                    Text("\(totalMoney.formatted())원")
                        .font(.title).bold()
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    HistoryView()
}
