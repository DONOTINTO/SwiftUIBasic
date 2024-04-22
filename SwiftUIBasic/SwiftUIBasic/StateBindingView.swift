//
//  StateBindingView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/18/24.
//

import SwiftUI

struct StateBindingView: View {
    
    @State var genre: String = "영화 장르"
    @State var count: Int = 0
    
    var body: some View {
        GenreButtonView(genre: $genre, count: $count)
        Text(genre)
        Text("\(count)번 변경")
    }
}

struct GenreButtonView: View {
    
    @Binding var genre: String
    @Binding var count: Int
            
    var body: some View {
        HStack {
            Button("로맨스") {
                genre = "로맨스"
            }
            Button("SF") {
                genre = "SF"
            }
            Button("액션") {
                count += 1
            }
        }
    }
}

#Preview {
    StateBindingView()
}
