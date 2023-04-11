//
//  SettingsView.swift
//  Daily
//
//  Created by 丁弈 on 10/04/2023.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Text("设置")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
            .navigationTitle("设置")
        }
        .navigationViewStyle(.stack)
    }
}
