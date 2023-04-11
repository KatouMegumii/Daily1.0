//
//  WeightTrackerView.swift
//  Daily
//
//  Created by 丁弈 on 10/04/2023.
//

import Foundation
import SwiftUI

struct WeightTrackerView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Text("体重记录")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
            .navigationTitle("体重")
        }
        .navigationViewStyle(.stack)
    }
}
