//
//  HomeView.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/22/24.
//

import SwiftUI

/*
 1. NavigationLink Destination이 Push되지 않더라도 무조건 Init
 
 2. Version 대응이 필요한 순간들이 많다.
 
 3. @ViewBuilder
 */


struct HomeView: View {
    
    init() {
        print("HomeView Init")
    }
    
    let url = URL(string: "https://picsum.photos/200")
    
    @ViewBuilder
    var posterImage: some View {
        
        AsyncImage(url: url)
    }
    
    var sectionView: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0 ..< 9) { _ in
                    NavigationLink {
                        HomeDetailView()
                    } label: {
                        posterImage
                    }
                }
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    ForEach(0 ..< 5) { idx in
                        Text("\(idx) 섹션")
                            .asPointBackground()
                        sectionView
                    }
                }
            }.background(.yellow)
                .navigationTitle("네비게이션 타이틀")
        }
    }
}

struct HomeDetailView: View {
    
    init() {
        print("HomeDetailView Init")
    }
    
    var body: some View {
        Text("ASDF")
    }
}

#Preview {
    HomeView()
}
