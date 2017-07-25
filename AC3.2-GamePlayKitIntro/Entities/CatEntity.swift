//
//  CatEntity.swift
//  AC3.2-GamePlayKitIntro
//
//  Created by Tom Seymour on 3/13/17.
//  Copyright © 2017 AccessCode. All rights reserved.
//

import UIKit
import GameplayKit

class CatEntity: GKEntity {
    
    let catTexture: SKTexture = SKTexture(imageNamed: "facing_forward_kitty_1")
    
    override init() {
        super.init()
        
        let catSpriteComponent: SpriteComponent = SpriteComponent(texture: catTexture)
        
        addComponent(catSpriteComponent)
        addComponent(HungerComponent())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)
        
        for component in components {
            component.update(deltaTime: seconds)
        }
    }

}
