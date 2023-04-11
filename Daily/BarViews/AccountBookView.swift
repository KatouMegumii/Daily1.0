//
//  AccountBookView.swift
//  Daily
//
//  Created by 丁弈 on 10/04/2023.
//

import Foundation
import SwiftUI

struct AccountBookView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Text("账本")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
            .navigationTitle("账本")
        }
        .navigationViewStyle(.stack)
    }
}
