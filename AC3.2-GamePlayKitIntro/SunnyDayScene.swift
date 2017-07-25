//
//  SunnyDayScene.swift
//  AC3.2-GamePlayKitIntro
//
//  Created by Tom Seymour on 3/13/17.
//  Copyright © 2017 AccessCode. All rights reserved.
//

import UIKit
import SpriteKit

class SunnyDayScene: SKScene {
    
    let backgroundTexture: SKTexture = SKTexture(imageNamed: "bkgd_sunnyday")
    let catEntity: CatEntity = CatEntity()
    let fishEntity: FishEntity = FishEntity()
    
    var backgroundNode: SKSpriteNode?
    
    override init(size: CGSize) {
        super.init(size: size)
        
        backgroundNode = SKSpriteNode(texture: backgroundTexture, size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        self.backgroundNode?.zPosition = 10
        self.backgroundNode?.anchorPoint = self.anchorPoint
        self.addChild(backgroundNode!)
        
        
        //checking to see if a sprite component exists in catEntitiy
        if let catSprite = catEntity.component(ofType: SpriteComponent.self) {
            catSprite.spriteNode.zPosition = 20
            catSprite.spriteNode.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
            self.addChild(catSprite.spriteNode)
            
        }
        
        if let fishSprite = fishEntity.component(ofType: SpriteComponent.self) {
            fishSprite.spriteNode.zPosition = 20
            fishSprite.spriteNode.position = CGPoint(x: self.frame.midX + 50, y: self.frame.midY + 50)
            self.addChild(fishSprite.spriteNode)
        }

    }
    
    
    override func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        
        self.catEntity.update(deltaTime: currentTime)
        self.fishEntity.update(deltaTime: currentTime)
    }
    
}






