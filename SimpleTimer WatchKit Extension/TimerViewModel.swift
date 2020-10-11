//
//  TimerViewModel.swift
//  SimpleTimer WatchKit Extension
//
//  Created by ANDREY VORONTSOV on 08.07.2020.
//  Copyright © 2020 ANDREY VORONTSOV. All rights reserved.
//

import Foundation

class TimerViewModel: ObservableObject {
    
    var hours = 0..<24
    var minutes = 0..<60
    var seconds = 0..<60
    
}
