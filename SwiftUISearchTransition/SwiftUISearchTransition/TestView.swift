//
//  TestView.swift
//  SwiftUISearchTransition
//
//  Created by 이중엽 on 4/22/24.
//

import SwiftUI

struct TestView: View {
    
    var age = Int.random(in: 1 ... 100)
    
    @ViewBuilder
    var hello: some View {
        switch age {
        case 0 ... 50: Text("asdf")
        case 51 ... 100: Image(systemName: "star")
        default: Text("default")
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                hello
                
                Text("Button")
                    .wrapToButton {
                        print("asdf")
                    }
                
                
                Image(systemName: "star")
                    .wrapToButton {
                        print("qwer")
                    }
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 100)
                    .wrapToButton {
                        print("rectangle")
                    }
            }
            .navigationTitle("asdf")
            .navigationBar {
                Text("asdf")
                    .wrapToButton {
                        print("asdf")
                    }
            } _: {
                Image(systemName: "person")
                    .wrapToButton {
                        print("person")
                    }
            }

        }
    }
}

#Preview {
    TestView()
}
