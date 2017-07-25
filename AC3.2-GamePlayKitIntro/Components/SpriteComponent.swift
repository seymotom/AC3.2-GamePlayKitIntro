//
//  SpriteComponent.swift
//  AC3.2-GamePlayKitIntro
//
//  Created by Tom Seymour on 3/13/17.
//  Copyright © 2017 AccessCode. All rights reserved.
//

import UIKit
import GameplayKit

class SpriteComponent: GKComponent {

    var spriteNode: SKSpriteNode!
    
    init(texture: SKTexture) {
        spriteNode = SKSpriteNode(texture: texture, size: texture.size())
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
