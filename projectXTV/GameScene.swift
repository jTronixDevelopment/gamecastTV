//
//  GameScene.swift
//  projectXTV
//
//  Created by Ryan Johnson on 2/18/18.
//  Copyright © 2018 Ryan Johnson. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let swipeRightRec = UISwipeGestureRecognizer()
    let swipeLeftRec = UISwipeGestureRecognizer()
    let swipeUpRec = UISwipeGestureRecognizer()
    let swipeDownRec = UISwipeGestureRecognizer()
    let tapRec = UITapGestureRecognizer()
    
    override func didMove( to view : SKView){
        setUpController()
    }
    
    func setUpController(){
        swipeRightRec.addTarget(self, action: #selector(swipedRight))
        swipeRightRec.direction = .right
        self.view!.addGestureRecognizer(swipeRightRec)
        
        swipeLeftRec.addTarget(self, action: #selector(swipedLeft))
        swipeLeftRec.direction = .left
        self.view!.addGestureRecognizer(swipeLeftRec)
        
        swipeUpRec.addTarget(self, action: #selector(swipedUp))
        swipeUpRec.direction = .up
        self.view!.addGestureRecognizer(swipeUpRec)
        
        swipeDownRec.addTarget(self, action: #selector(swipedDown))
        swipeDownRec.direction = .down
        self.view!.addGestureRecognizer(swipeDownRec)
        
        tapRec.addTarget(self, action: #selector(tapped))
        self.view!.addGestureRecognizer(tapRec)
    }
    
    @objc func swipedRight(){
        print("Right")
    }
    
    @objc func swipedLeft(){
        print("left")
    }
    
    @objc func swipedUp(){
        print("up")
    }
    
    @objc func swipedDown(){
        print("down")
    }
    
    @objc func tapped(){
        print("tap")
    }
    
}





































