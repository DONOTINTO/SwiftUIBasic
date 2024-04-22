//
//  SettingView.swift
//  SwiftUIBasic
//
//  Created by 이중엽 on 4/18/24.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                Button("123") {
                    print("dkfjalskdf")
                }
                Gauge(value: 0.5, label: {
                    Text("Label")
                })
            }
            ColorPicker("Title", selection: .constant(.red))
            DatePicker(selection: .constant(Date()), label: { Text("Date") })
            Menu("Menu") {
                Text("Menu Item 1")
                Text("Menu Item 2")
                Text("Menu Item 3")
            }
        }.listStyle(.grouped)
    }
}

#Preview {
    SettingView()
}
