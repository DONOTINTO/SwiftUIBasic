//
//  ContentView.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/19/24.
//

// Opaque Type: some / any
// Property Wrapper: wrappedValue / projectedValue
// var body nonmutationg get
// @state @binding
// SwiftUI View Rendering: body 프로퍼티 연산

// - ScrollView = iOS17+
// - NavigationStack = iOS16+
// - AsyncImage = iOS15+
// - LazyVStack = iOS14+

import SwiftUI

// Transition
struct ContentView: View {
    
    @State private var isFullPresented = false
    @State private var isSheetPresented = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                Button(action: {
                    print("커스텀 버튼 클릭")
                }, label: {
                    HStack {
                        Image(systemName: "star")
                        Text("Button")
                        Image(systemName: "star")
                    }
                    .padding(50)
                })
                // .padding(50)
                .background(.green)
                .foregroundStyle(.white)
                
                Button("Full Present") {
                    isFullPresented = true
                }
                .padding(10)
                .background(.yellow)
                
                
                Button("Sheet Present") {
                    isSheetPresented.toggle()
                }
                NavigationLink {
                    NavigationPushView()
                } label: {
                    Image(systemName: "star")
                }

                NavigationLink("Navigation Push") {
                    NavigationPushView()
                }
            }
            .font(.title)
            .fullScreenCover(isPresented: $isFullPresented, content: {
                FullPresentView()
            })
            .sheet(isPresented: $isSheetPresented, content: {
                SheetPresentView()
            })
            .navigationTitle("asdf")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button(action: {
                        print("버튼 클릭")
                    }, label: {
                        Text("Button")
                    })
                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button(action: {
                        print("버튼 클릭")
                    }, label: {
                        Text("Button")
                    })
                }
            }
        }
    }
}

struct FullPresentView: View {
    var body: some View {
        Text("Full Present View")
    }
}

struct SheetPresentView: View {
    var body: some View {
        Text("Sheet Present View")
    }
}

struct NavigationPushView: View {
    var body: some View {
        Text("Navigation Push View")
    }
}

#Preview {
    ContentView()
}
