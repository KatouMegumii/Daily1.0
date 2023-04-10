//
//  ContentView.swift
//  Daily
//
//  Created by 丁弈 on 09/04/2023.
//

import SwiftUI

//主UI
struct ContentView: View {
    var body: some View {
        VStack {
            GreetingByDate()
            FunctionBar()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.init(red: 0.09, green: 0.09, blue: 0.09))
    }

//根据客户端时间显示不同的问候语
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

//功能按键区图片
struct FunctionBar: View{
    var body: some View{
        HStack(alignment: .center, spacing: 10){
            Image(systemName: "bell")
            Image(systemName: "clock")
            Image(systemName: "gearshape")
            }
        .position(x:269,y:-196.5)
            .foregroundColor(Color.white)
            .scaleEffect(1.4)
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
