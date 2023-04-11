//
//  BottomBar.swift
//  Daily
//
//  Created by 丁弈 on 10/04/2023.
//

import Foundation
import SwiftUI

struct BottomBar: View{
    @State var current = "主页"
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            TabView(selection: $current){
                HomeView()
                    .tag("主页")
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.init(red: 0.09, green: 0.09, blue: 0.09))
                Text("体重")
                    .tag("体重")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.init(red: 0.09, green: 0.09, blue: 0.09))
                Text("记账")
                    .tag("记账")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.init(red: 0.09, green: 0.09, blue: 0.09))
            }
            HStack(spacing:0){
                BottomButton(title: "主页", image: "house", selected: $current)
                Spacer(minLength: 0)
                BottomButton(title: "体重", image: "scalemass", selected: $current)
                Spacer(minLength: 0)
                BottomButton(title: "记账", image: "book", selected: $current)
            }
            .padding(.vertical,12)
            .padding(.horizontal)
            .background(Color.init(red: 0.12, green: 0.12, blue: 0.12))
            .clipShape(Capsule())
            .padding(.horizontal,25)
        }
    }
}
