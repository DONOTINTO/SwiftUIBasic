//
//  SearchView.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/19/24.
//

import SwiftUI

// Swift KeyPath

struct Category: Hashable {
    let hash = UUID()
    let name: String
    let count: Int
}

struct SearchView: View {
    
    @State private var query = "잭"
    
    let category = [
        Category(name: "스릴러", count: 1),
        Category(name: "액션", count: 2),
        Category(name: "SF", count: 3),
        Category(name: "로맨스", count: 4),
        Category(name: "애니메이션", count: 5),
    ]
    
    var filterCategory: [Category] {
        return query.isEmpty ? category : category.filter({ $0.name.contains(query) })
    }
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(filterCategory, id: \.self) { value in
                    NavigationLink {
                        SearchDetailView(category: value)
                    } label: {
                        Text("\(value.name) \(value.count)")
                    }
                }
            }
            .navigationTitle("영화 검색")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $query,
                        placement: .navigationBarDrawer,
                        prompt: "영화를 검색해보세요.")
            .onSubmit(of: .search) {
                print("asdf")
            }
        }
    }
}

struct SearchDetailView: View {
    
    let category: Category
    
    var body: some View {
        Text("\(category.name): \(category.count)")
    }
}

#Preview {
    SearchView()
}
