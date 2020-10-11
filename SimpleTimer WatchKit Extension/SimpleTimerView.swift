//
//  SimpleTimerView.swift
//  SimpleTimer WatchKit Extension
//
//  Created by ANDREY VORONTSOV on 08.07.2020.
//  Copyright © 2020 ANDREY VORONTSOV. All rights reserved.
//

import SwiftUI

struct SimpleTimerView: View {
    
    @ObservedObject var viewModel: TimerViewModel
    
    @State private var selectedHours = 0
    @State private var selectedMinutes = 0
    @State private var selectedSeconds = 0
    
    var body: some View {
        VStack {
            HStack {
                Picker(selection: $selectedHours, label: Text("hours")) {
                    ForEach(viewModel.hours) { hour in
                        Text(String(format: "%02d", hour))
                   }
                }
                
                Text(":")
                
                Picker(selection: $selectedMinutes, label: Text("min")) {
                    ForEach(viewModel.minutes) { min in
                      Text(String(format: "%02d", min))
                   }
                }
                
                Text(":")
                
                Picker(selection: $selectedSeconds, label: Text("sec")) {
                    ForEach(viewModel.seconds) { sec in
                      Text(String(format: "%02d", sec))
                   }
                }
            }
            
            Spacer()
            
            NavigationLink(destination: TimerCountdownView(interval: TimeInterval())) {
                Text("Start")
            }
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleTimerView(viewModel: TimerViewModel())
    }
}
