//
//  HostingController.swift
//  SimpleTimer WatchKit Extension
//
//  Created by ANDREY VORONTSOV on 08.07.2020.
//  Copyright © 2020 ANDREY VORONTSOV. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<SimpleTimerView> {
    override var body: SimpleTimerView {
        return SimpleTimerView(viewModel: TimerViewModel())
    }
}
