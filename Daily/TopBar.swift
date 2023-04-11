//
//  TopBar.swift
//  Daily
//
//  Created by 丁弈 on 10/04/2023.
//

import Foundation
import SwiftUI

struct TopBar: View{
    var body: some View{
        HStack(alignment:.top){
            GreetingByDate()
            NoteButton()
        }
    }
}

//按时间显示问候语
struct GreetingByDate: View {
    var body: some View {
        let currentTime = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: currentTime)
            
        let greeting: String
            
        if hour < 6 {
            greeting = "该睡了。"
        } else if hour >= 6 && hour < 12 {
            greeting = "上午好。"
        } else if hour >= 12 && hour < 18 {
            greeting = "下午好。"
        } else {
            greeting = "晚上好。"
        }
            
    return Text(greeting)
        .foregroundColor(Color.white)
        .font(.system(size:24,weight: .bold))
        .position(x:50,y:20)
    }
}

//通知和设置按钮
struct NoteButton: View{
    var body: some View{
        HStack{
        Button(action:{
        }){
                Image(systemName: "bell")
            }
        Button(action:{
        }){
                Image(systemName: "gearshape")
            }
        }
        .foregroundColor(Color.white)
        .scaledToFit()
        .font(.system(size:24,weight: .bold))
        .offset(y:9.5)
    }
}
