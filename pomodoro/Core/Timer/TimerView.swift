//
//  TimerView.swift
//  pomodoro
//
//  Created by 최인영 on 2022/05/19.
//

import SwiftUI

struct TimerView: View {
    @State var countDownTimer = 5
    @State var timerRunning = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
   
    var body: some View {
        VStack{
            Text("\(countDownTimer)")
                .onReceive(timer){ _ in
                    if countDownTimer > 0 && timerRunning {
                        countDownTimer -= 1
                    }else {
                        timerRunning = false
                    }
                }
                .font(.system(size: 80 , weight: .bold))
                .opacity(0.80)
            
            HStack(spacing:30){
                Button("START"){
                    timerRunning = true
                }
                Button("RESET"){
                    countDownTimer = 5
                }.foregroundColor(.red)
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
