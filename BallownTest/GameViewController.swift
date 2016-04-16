//
//  GameViewController.swift
//  BallownTest
//
//  Created by USER on 2016/04/16.
//  Copyright (c) 2016年 USER. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let scene = GameScene(fileNamed:"GameScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    
//    // MARK: - デバイスの向き（横のみの場合）
//    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        let orientation: UIInterfaceOrientationMask = UIInterfaceOrientationMask.LandscapeRight
//        // 複数許す場合
//        // let orientation: UIInterfaceOrientationMask = [UIInterfaceOrientationMask.Portrait, UIInterfaceOrientationMask.PortraitUpsideDown]
//        return orientation
//    }
//    
//    //指定方向に自動的に変更
//    override func shouldAutorotate() -> Bool{
//        return true
//    }
}
