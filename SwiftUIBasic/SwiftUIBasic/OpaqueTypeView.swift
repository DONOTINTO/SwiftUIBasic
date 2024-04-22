//
//  OpaqueTypeView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/15/24.
//

import SwiftUI

struct OpaqueTypeView: View {
    
    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            let value = type(of: self.body)
            print("클릭했습니다", "\(value)")
        }
        .foregroundStyle(.red)
        .background(.green)
    }
    
    func example<T>(a: T, b: T) {
        print(a, b)
    }
}

#Preview {
    OpaqueTypeView()
}
