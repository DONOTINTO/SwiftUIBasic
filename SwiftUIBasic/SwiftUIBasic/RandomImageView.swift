//
//  RandomImageView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/18/24.
//

// AsyncImage(iOS 15+)
import SwiftUI

struct RandomImageView: View {
    
    let url = URL(string: "https://picsum.photos/200/200")
    
    var body: some View {
        AsyncImage(url: url) { data in
            
            switch data {
            case .empty:
                ProgressView()
                    .frame(width: 100, height: 100)
            case .success(let image):
                image.resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(.circle)
            case .failure(let error):
                Color.gray
            @unknown default:
                fatalError()
            }
        }
    }
}

#Preview {
    RandomImageView()
}
