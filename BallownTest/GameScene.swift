//
//  GameScene.swift
//  BallownTest
//
//  Created by USER on 2016/04/16.
//  Copyright (c) 2016年 USER. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
//            let tmpRect = CGRectMake(0.0, 0.0, 400, 100)
            let sprite = SKSpriteNode(imageNamed:"yellowtutorial")
            
//            sprite.size = CGSizeMake(100, 100, );
            
            
            
            sprite.xScale = 2.5
            sprite.yScale = 2.5
            sprite.position = location
            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
//            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
