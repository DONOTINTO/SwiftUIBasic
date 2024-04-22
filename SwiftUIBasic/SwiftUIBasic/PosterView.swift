//
//  PosterView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/18/24.
//

import SwiftUI

struct PosterView: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
                RandomImageView()
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    PosterView()
}
