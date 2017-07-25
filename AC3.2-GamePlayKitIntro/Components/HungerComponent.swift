//
//  HungerComponent.swift
//  AC3.2-GamePlayKitIntro
//
//  Created by Tom Seymour on 3/13/17.
//  Copyright © 2017 AccessCode. All rights reserved.
//

import UIKit
import GameplayKit

class HungerComponent: GKComponent {
    
    var hungerValue: Int = 100
    var lastUpdated: TimeInterval = TimeInterval(0)
    let updateInterval: TimeInterval = TimeInterval(2)
    
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)
        
        if seconds - lastUpdated > updateInterval {
            
            hungerValue = hungerValue - 1
            lastUpdated = seconds
            print("MEEEOOOOOOW: HUNGRY \(self.hungerValue)")
        }
    }
}
