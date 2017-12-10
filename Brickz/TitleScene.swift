//
//  TitleScene.swift
//  Brickz
//
//  Created by Julian Cearley on 8/24/17.
//  Copyright © 2017 Julian Cearley. All rights reserved.
//

// make the coin system so every level has some coins but once you collect them they wont be in that level anymore


import UIKit
import SpriteKit

struct PhysicsCategory {
    static let Barrier : UInt32 = 0x1 << 0
    static let Ball : UInt32 = 0x1 << 1
    static let Paddle : UInt32 = 0x1 << 2
    static let Brick: UInt32 = 0x1 << 3
}

class TitleScene: SKScene, SKPhysicsContactDelegate {
    
    let logo = SKSpriteNode(imageNamed: "Brickz")
    let leftBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let rightBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let topBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    let bottomBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    
    let paddle = SKSpriteNode(imageNamed: "Paddle")
    let ball = SKSpriteNode(imageNamed: "Ball")
    
    let continueBtn = SKSpriteNode()
    let lvlSelectBtn = SKSpriteNode()
    let musicBtn = SKSpriteNode()
    let soundBtn = SKSpriteNode()
    
    let continueTxtureUp = SKTexture(imageNamed: "ContinueBtnUpImg")
    let continueTxtureDown = SKTexture(imageNamed: "ContinueBtnDownImg")
    let lvlSelectTxtureUp = SKTexture(imageNamed: "LvlSelectBtnUpImg")
    let lvlSelectTxtureDown = SKTexture(imageNamed: "LvlSelectBtnDownImg")
    let musicTxtureOn = SKTexture(imageNamed: "")
    let musicTxtureOff = SKTexture(imageNamed: "")
    let soundTxtureOn = SKTexture(imageNamed: "")
    let soundTxtureOff = SKTexture(imageNamed: "")
    
    let storeBtn = SKSpriteNode()
    let lbBtn = SKSpriteNode()
    
    let storeTxtureUp = SKTexture(imageNamed: "storeUpImg")
    let storeTxtureDown = SKTexture(imageNamed: "storeDownImg")
    let lbTxtureUp = SKTexture(imageNamed: "lbUpImg")
    let lbTxtureDown = SKTexture(imageNamed: "lbDownImg")
    
    var continueBtnString = UserDefaults.standard.string(forKey: "continueBtnString")
    
    let ch1Btn = SKSpriteNode()
    let ch1Texture1 = SKTexture(imageNamed: "ch1UpImg")
    let ch1Texture2 = SKTexture(imageNamed: "ch1DownImg")
    
    let ch2Btn = SKSpriteNode()
    let ch2Texture1 = SKTexture(imageNamed: "ch2UpImg")
    let ch2Texture2 = SKTexture(imageNamed: "ch2DownImg")
    
    let ch3Btn = SKSpriteNode()
    let ch3Texture1 = SKTexture(imageNamed: "ch3UpImg")
    let ch3Texture2 = SKTexture(imageNamed: "ch3DownImg")
    
    let ch4Btn = SKSpriteNode()
    let ch4Texture1 = SKTexture(imageNamed: "ch4UpImg")
    let ch4Texture2 = SKTexture(imageNamed: "ch4DownImg")
    
    let ch5Btn = SKSpriteNode()
    let ch5Texture1 = SKTexture(imageNamed: "ch5UpImg")
    let ch5Texture2 = SKTexture(imageNamed: "ch5DownImg")
    
    let ch6Btn = SKSpriteNode()
    let ch6Texture1 = SKTexture(imageNamed: "ch6UpImg")
    let ch6Texture2 = SKTexture(imageNamed: "ch6DownImg")
    
    let ch7Btn = SKSpriteNode()
    let ch7Texture1 = SKTexture(imageNamed: "ch7UpImg")
    let ch7Texture2 = SKTexture(imageNamed: "ch7DownImg")
    
    let ch8Btn = SKSpriteNode()
    let ch8Texture1 = SKTexture(imageNamed: "ch8UpImg")
    let ch8Texture2 = SKTexture(imageNamed: "ch8DownImg")
    
    let ch9Btn = SKSpriteNode()
    let ch9Texture1 = SKTexture(imageNamed: "ch9UpImg")
    let ch9Texture2 = SKTexture(imageNamed: "ch9DownImg")
    
    let ch10Btn = SKSpriteNode()
    let ch10Texture1 = SKTexture(imageNamed: "ch10UpImg")
    let ch10Texture2 = SKTexture(imageNamed: "ch10DownImg")
    
    let chSelectTitle = SKSpriteNode(imageNamed: "chSelectTitleImg")
    
    let upBtn = SKSpriteNode(imageNamed: "ArrowUpImg")
    let downBtn = SKSpriteNode(imageNamed: "ArrowDownImg")
    var scrollPos = 1
    
    let fadeOut = SKAction.fadeOut(withDuration: 0.5)
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0, y: 0)
        self.backgroundColor = SKColor.lightGray
        self.physicsWorld.contactDelegate = self
        
        print("\(continueBtnString)")
        
        lvlSelectBtn.texture = lvlSelectTxtureUp
        lvlSelectBtn.size = CGSize(width: self.frame.width / 1.9, height: self.frame.height / 15)
        lvlSelectBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.9)
        lvlSelectBtn.name = "lvlSelectBtn"
        self.addChild(lvlSelectBtn)
        
        continueBtn.texture = continueTxtureUp
        continueBtn.size = CGSize(width: self.frame.width / 2.5, height: self.frame.height / 15)
        continueBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.5)
        continueBtn.name = "continueBtn"
        self.addChild(continueBtn)
        
        storeBtn.texture = storeTxtureUp
        storeBtn.size = CGSize(width: self.frame.width / 3, height: self.frame.height / 15)
        storeBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.6)
        storeBtn.name = "storeBtn"
        self.addChild(storeBtn)
        
        lbBtn.texture = lbTxtureUp
        lbBtn.size = CGSize(width: self.frame.width / 1.6, height: self.frame.height / 15)
        lbBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 4)
        lbBtn.name = "lbBtn"
        self.addChild(lbBtn)
        
        logo.size = CGSize(width: self.frame.width / 1.8, height: self.frame.height / 11)
        logo.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.15)
        self.addChild(logo)
        
        leftBarrier.size = CGSize(width: self.frame.width / 25, height: self.frame.height)
        leftBarrier.position = CGPoint(x: 0, y: self.frame.height / 2)
        leftBarrier.name = "leftBarrier"
        self.addChild(leftBarrier)
        leftBarrier.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: leftBarrier.size.width, height: leftBarrier.size.height))
        leftBarrier.physicsBody?.isDynamic = false
        leftBarrier.physicsBody?.affectedByGravity = false
        leftBarrier.physicsBody?.friction = 0
        leftBarrier.physicsBody?.restitution = 1
        
        rightBarrier.size = CGSize(width: self.frame.width / 25, height: self.frame.height)
        rightBarrier.position = CGPoint(x: self.frame.width, y: self.frame.height / 2)
        rightBarrier.name = "rightBarrier"
        self.addChild(rightBarrier)
        rightBarrier.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: rightBarrier.size.width, height: rightBarrier.size.height))
        rightBarrier.physicsBody?.isDynamic = false
        rightBarrier.physicsBody?.affectedByGravity = false
        rightBarrier.physicsBody?.friction = 0
        rightBarrier.physicsBody?.restitution = 1
        
        topBarrier.size = CGSize(width: self.frame.width, height: self.frame.width / 25)
        topBarrier.position = CGPoint(x: self.frame.width / 2, y: self.frame.height)
        topBarrier.name = "topBarrier"
        self.addChild(topBarrier)
        topBarrier.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: topBarrier.size.width, height: topBarrier.size.height))
        topBarrier.physicsBody?.isDynamic = false
        topBarrier.physicsBody?.affectedByGravity = false
        topBarrier.physicsBody?.friction = 0
        topBarrier.physicsBody?.restitution = 1
        
        bottomBarrier.size = CGSize(width: self.frame.width, height: self.frame.width / 25)
        bottomBarrier.position = CGPoint(x: self.frame.width / 2, y: 0)
        bottomBarrier.name = "bottomBarrier"
        self.addChild(bottomBarrier)
        bottomBarrier.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: bottomBarrier.size.width, height: bottomBarrier.size.height))
        bottomBarrier.physicsBody?.isDynamic = false
        bottomBarrier.physicsBody?.affectedByGravity = false
        bottomBarrier.physicsBody?.friction = 0
        bottomBarrier.physicsBody?.restitution = 1
        
        paddle.size = CGSize(width: self.frame.width / 4.5, height: self.frame.height / 22)
        paddle.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 10)
        paddle.name = "paddle"
        self.addChild(paddle)
        paddle.physicsBody = SKPhysicsBody(rectangleOf: paddle.size)
        paddle.physicsBody?.affectedByGravity = false
        paddle.physicsBody?.isDynamic = false
        paddle.physicsBody?.friction = 0
        paddle.physicsBody?.restitution = 0
        paddle.physicsBody?.categoryBitMask = PhysicsCategory.Paddle
        paddle.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        paddle.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        ball.size = CGSize(width: self.frame.width / 15, height: self.frame.width / 15)
        ball.position.y = self.frame.height - (ball.size.width)
        let posX = arc4random_uniform(UInt32(self.frame.width))
        ball.position.x = CGFloat(posX)
        ball.color = SKColor.white
        ball.colorBlendFactor = 1
        ball.name = "ball"
        ball.zPosition = -1
        self.addChild(ball)
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width / 2)
        ball.physicsBody?.isDynamic = true
        ball.physicsBody?.affectedByGravity = false
        ball.physicsBody?.friction = 0
        ball.physicsBody?.restitution = 1
        ball.physicsBody?.categoryBitMask = PhysicsCategory.Ball
        ball.physicsBody?.collisionBitMask = PhysicsCategory.Paddle | PhysicsCategory.Ball | PhysicsCategory.Barrier
        ball.physicsBody?.contactTestBitMask = PhysicsCategory.Paddle | PhysicsCategory.Ball | PhysicsCategory.Barrier
        ball.physicsBody?.applyImpulse(CGVector(dx: -25, dy: -35))
        ball.physicsBody?.linearDamping = 0
        ball.physicsBody?.angularDamping = 0
        
        chSelectTitle.size = CGSize(width: self.frame.width / 1.3, height: self.frame.height / 10)
        chSelectTitle.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.1)
        chSelectTitle.alpha = 0
        self.addChild(chSelectTitle)
        
        ch2Btn.texture = ch2Texture1
        ch2Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch2Btn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.2)
        ch2Btn.name = "ch2Btn"
        ch2Btn.alpha = 0
        self.addChild(ch2Btn)
        
        ch1Btn.texture = ch1Texture1
        ch1Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch1Btn.position = CGPoint(x: self.frame.width / 2, y: ch2Btn.position.y + (self.frame.width / 3))
        ch1Btn.name = "ch1Btn"
        ch1Btn.alpha = 0
        self.addChild(ch1Btn)
        
        ch3Btn.texture = ch3Texture1
        ch3Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch3Btn.position = CGPoint(x: self.frame.width / 2, y: ch2Btn.position.y - (self.frame.width / 3))
        ch3Btn.name = "ch3Btn"
        ch3Btn.alpha = 0
        self.addChild(ch3Btn)
        
        ch5Btn.texture = ch5Texture1
        ch5Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch5Btn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.2)
        ch5Btn.name = "ch5Btn"
        
        ch4Btn.texture = ch4Texture1
        ch4Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch4Btn.position = CGPoint(x: self.frame.width / 2, y: ch5Btn.position.y + (self.frame.width / 3))
        ch4Btn.name = "ch4Btn"
        
        ch6Btn.texture = ch6Texture1
        ch6Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch6Btn.position = CGPoint(x: self.frame.width / 2, y: ch5Btn.position.y - (self.frame.width / 3))
        ch6Btn.name = "ch6Btn"
        
        ch8Btn.texture = ch8Texture1
        ch8Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch8Btn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.2)
        ch8Btn.name = "ch8Btn"
        
        ch7Btn.texture = ch7Texture1
        ch7Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch7Btn.position = CGPoint(x: self.frame.width / 2, y: ch8Btn.position.y + (self.frame.width / 3))
        ch7Btn.name = "ch7Btn"
        
        ch9Btn.texture = ch9Texture1
        ch9Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch9Btn.position = CGPoint(x: self.frame.width / 2, y: ch8Btn.position.y - (self.frame.width / 3))
        ch9Btn.name = "ch9Btn"
        
        ch10Btn.texture = ch10Texture1
        ch10Btn.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 10)
        ch10Btn.name = "ch10Btn"
        
        upBtn.size = CGSize(width: self.frame.width / 5, height: self.frame.width / 5)
        upBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.33)
        upBtn.name = "upBtn"
        upBtn.alpha = 0
        self.addChild(upBtn)
        
        downBtn.size = CGSize(width: self.frame.width / 5, height: self.frame.width / 5)
        downBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 6.5)
        downBtn.name = "downBtn"
        downBtn.alpha = 0
        self.addChild(downBtn)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if touchedNode.name == "continueBtn" {
            continueBtn.texture = continueTxtureDown
        }
        if touchedNode.name == "lvlSelectBtn" {
            lvlSelectBtn.texture = lvlSelectTxtureDown
        }
        if touchedNode.name == "storeBtn" {
            storeBtn.texture = storeTxtureDown
            let scene = ch1lvl55Scene(size: CGSize(width: 640, height: 1136))
            let transition = SKTransition.fade(withDuration: 0)
            scene.scaleMode = .aspectFill
            self.view?.presentScene(scene, transition: transition)
        }
        if touchedNode.name == "lbBtn" {
            lbBtn.texture = lbTxtureDown
        }
        if touchedNode.name == "upBtn" {
            upBtn.color = SKColor.darkGray
            upBtn.colorBlendFactor = 1
            upBtn.run(SKAction.scale(to: CGSize(width: self.frame.width / 6, height: self.frame.width / 6), duration: 0))
        }
        if touchedNode.name == "downBtn" {
            downBtn.color = SKColor.darkGray
            downBtn.colorBlendFactor = 1
            downBtn.run(SKAction.scale(to: CGSize(width: self.frame.width / 6, height: self.frame.width / 6), duration: 0))
        }
        if touchedNode.name == "ch1Btn" {
            ch1Btn.texture = ch1Texture2
        }
        if touchedNode.name == "ch2Btn" {
            ch2Btn.texture = ch2Texture2
        }
        if touchedNode.name == "ch3Btn" {
            ch3Btn.texture = ch3Texture2
        }
        if touchedNode.name == "ch4Btn" {
            ch4Btn.texture = ch4Texture2
        }
        if touchedNode.name == "ch5Btn" {
            ch5Btn.texture = ch5Texture2
        }
        if touchedNode.name == "ch6Btn" {
            ch6Btn.texture = ch6Texture2
        }
        if touchedNode.name == "ch7Btn" {
            ch7Btn.texture = ch7Texture2
        }
        if touchedNode.name == "ch8Btn" {
            ch8Btn.texture = ch8Texture2
        }
        if touchedNode.name == "ch9Btn" {
            ch9Btn.texture = ch9Texture2
        }
        if touchedNode.name == "ch10Btn" {
            ch10Btn.texture = ch10Texture2
        }
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if touchedNode.name == "continueBtn" {
            continueBtn.texture = continueTxtureUp
            continueBtnAction()
        }
        if touchedNode.name == "lvlSelectBtn" {
            lvlSelectBtn.texture = lvlSelectTxtureUp
            logo.run(fadeOut)
            ball.run(fadeOut)
            continueBtn.run(fadeOut)
            lvlSelectBtn.run(fadeOut)
            storeBtn.run(fadeOut)
            lbBtn.run(fadeOut)
            paddle.run(fadeOut, completion: {
                UIView.animate(withDuration: 0.5, animations: {
                    self.chSelectTitle.alpha = 1
                    self.ch2Btn.alpha = 1
                    self.ch1Btn.alpha = 1
                    self.ch3Btn.alpha = 1
                    self.downBtn.alpha = 1
                    self.upBtn.alpha = 1
                })
            })
        }
        if touchedNode.name == "storeBtn" {
            storeBtn.texture = storeTxtureUp
        }
        if touchedNode.name == "lbBtn" {
            lbBtn.texture = lbTxtureUp
        }
        if touchedNode.name == "upBtn" {
            upBtn.colorBlendFactor = 0
            upBtn.run(SKAction.scale(to: CGSize(width: self.frame.width / 5, height: self.frame.width / 5), duration: 0))
            if scrollPos == 1 {
                // nothing
            } else if scrollPos == 2 {
                ch5Btn.removeFromParent()
                ch4Btn.removeFromParent()
                ch6Btn.removeFromParent()
                self.addChild(ch2Btn)
                self.addChild(ch1Btn)
                self.addChild(ch3Btn)
                scrollPos = 1
            } else if scrollPos == 3 {
                ch7Btn.removeFromParent()
                ch8Btn.removeFromParent()
                ch9Btn.removeFromParent()
                self.addChild(ch4Btn)
                self.addChild(ch5Btn)
                self.addChild(ch6Btn)
                scrollPos = 2
            } else if scrollPos == 4 {
                ch10Btn.removeFromParent()
                ch9Btn.removeFromParent()
                ch8Btn.removeFromParent()
                ch8Btn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.2)
                ch9Btn.position = CGPoint(x: self.frame.width / 2, y: ch9Btn.position.y - (self.frame.width / 3))
                scrollPos = 3
                self.addChild(ch7Btn)
                self.addChild(ch8Btn)
                self.addChild(ch9Btn)
            }
        }
        if touchedNode.name == "downBtn" {
            downBtn.colorBlendFactor = 0
            downBtn.run(SKAction.scale(to: CGSize(width: self.frame.width / 5, height: self.frame.width / 5), duration: 0))
            if scrollPos == 1 {
                ch1Btn.removeFromParent()
                ch2Btn.removeFromParent()
                ch3Btn.removeFromParent()
                self.addChild(ch5Btn)
                self.addChild(ch4Btn)
                self.addChild(ch6Btn)
                scrollPos = 2
            } else if scrollPos == 2 {
                ch4Btn.removeFromParent()
                ch5Btn.removeFromParent()
                ch6Btn.removeFromParent()
                self.addChild(ch7Btn)
                self.addChild(ch8Btn)
                self.addChild(ch9Btn)
                scrollPos = 3
            } else if scrollPos == 3 {
                ch7Btn.removeFromParent()
                ch8Btn.removeFromParent()
                ch9Btn.removeFromParent()
                ch9Btn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.2)
                ch8Btn.position = CGPoint(x: self.frame.width / 2, y: ch9Btn.position.y + (self.frame.width / 3))
                ch10Btn.position = CGPoint(x: self.frame.width / 2, y: ch9Btn.position.y - (self.frame.width / 3))
                self.addChild(ch8Btn)
                self.addChild(ch9Btn)
                self.addChild(ch10Btn)
                scrollPos =  4
            } else if scrollPos ==  4 {
                // nothing
            }
        }
        if touchedNode.name == "ch1Btn" {
            ch1Btn.texture = ch1Texture1
            upBtn.run(fadeOut)
            downBtn.run(fadeOut)
            ch1Btn.run(fadeOut)
            ch2Btn.run(fadeOut)
            ch3Btn.run(fadeOut)
            ch4Btn.run(fadeOut)
            ch5Btn.run(fadeOut)
            ch6Btn.run(fadeOut)
            ch7Btn.run(fadeOut)
            ch8Btn.run(fadeOut)
            ch9Btn.run(fadeOut)
            ch10Btn.run(fadeOut)
            chSelectTitle.run(fadeOut, completion: {
                let scene = ch1SelectScene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        if touchedNode.name == "ch2Btn" {
            ch2Btn.texture = ch2Texture1
        }
        if touchedNode.name == "ch3Btn" {
            ch3Btn.texture = ch3Texture1
        }
        if touchedNode.name == "ch4Btn" {
            ch4Btn.texture = ch4Texture1
        }
        if touchedNode.name == "ch5Btn" {
            ch5Btn.texture = ch5Texture1
        }
        if touchedNode.name == "ch6Btn" {
            ch6Btn.texture = ch6Texture1
        }
        if touchedNode.name == "ch7Btn" {
            ch7Btn.texture = ch7Texture1
        }
        if touchedNode.name == "ch8Btn" {
            ch8Btn.texture = ch8Texture1
        }
        if touchedNode.name == "ch9Btn" {
            ch9Btn.texture = ch9Texture1
        }
        if touchedNode.name == "ch10Btn" {
            ch10Btn.texture = ch10Texture1
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if touchedNode.name != "continueBtn" {
            continueBtn.texture = continueTxtureUp
        }
        if touchedNode.name != "lvlSelectBtn" {
            lvlSelectBtn.texture = lvlSelectTxtureUp
        }
        if touchedNode.name != "storeBtn" {
            storeBtn.texture = storeTxtureUp
        }
        if touchedNode.name != "lbBtn" {
            lbBtn.texture = lbTxtureUp
        }
        if touchedNode.name != "ch1Btn" {
            ch1Btn.texture = ch1Texture1
        }
        if touchedNode.name != "ch2Btn" {
            ch2Btn.texture = ch2Texture1
        }
        if touchedNode.name != "ch3Btn" {
            ch3Btn.texture = ch3Texture1
        }
        if touchedNode.name != "ch4Btn" {
            ch4Btn.texture = ch4Texture1
        }
        if touchedNode.name != "ch5Btn" {
            ch5Btn.texture = ch5Texture1
        }
        if touchedNode.name != "ch6Btn" {
            ch6Btn.texture = ch6Texture1
        }
        if touchedNode.name != "ch7Btn" {
            ch7Btn.texture = ch7Texture1
        }
        if touchedNode.name != "ch8Btn" {
            ch8Btn.texture = ch8Texture1
        }
        if touchedNode.name != "ch9Btn" {
            ch9Btn.texture = ch9Texture1
        }
        if touchedNode.name != "ch10Btn" {
            ch10Btn.texture = ch10Texture1
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        paddle.run(SKAction.moveTo(x: ball.position.x, duration: 0.15))
    }
    
    func ballHitBarrier(Ball: SKSpriteNode, Barrier: SKSpriteNode) {
        
    }
    
    func ballHitPaddle(Ball: SKSpriteNode, Paddle: SKSpriteNode) {
        
    }
    
    func continueBtnAction() {
        
        ball.run(fadeOut)
        paddle.run(fadeOut)
        logo.run(fadeOut)
        continueBtn.run(fadeOut)
        lvlSelectBtn.run(fadeOut)
        storeBtn.run(fadeOut)
        lbBtn.run(fadeOut, completion: {
          
            var scene = SKScene()
            
            if self.continueBtnString == nil {
                scene = ch1lvl1Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl2" {
                scene = ch1lvl2Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl3" {
                scene = ch1lvl3Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl4" {
                scene = ch1lvl4Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl5" {
                scene = ch1lvl5Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl6" {
                scene = ch1lvl6Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl7" {
                scene = ch1lvl7Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl8" {
                scene = ch1lvl8Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl9" {
                scene = ch1lvl9Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl10" {
                scene = ch1lvl10Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl11" {
                scene = ch1lvl11Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl12" {
                scene = ch1lvl12Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl13" {
                scene = ch1lvl13Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl14" {
                scene = ch1lvl14Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl15" {
                scene = ch1lvl15Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl16" {
                scene = ch1lvl16Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl17" {
                scene = ch1lvl17Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl18" {
                scene = ch1lvl18Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl19" {
                scene = ch1lvl19Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl20" {
                scene = ch1lvl20Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl21" {
                scene = ch1lvl21Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl22" {
                scene = ch1lvl22Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl23" {
                scene = ch1lvl23Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl24" {
                scene = ch1lvl24Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl25" {
                scene = ch1lvl25Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl26" {
                scene = ch1lvl26Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl27" {
                scene = ch1lvl27Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl28" {
                scene = ch1lvl28Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl29" {
                scene = ch1lvl29Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl30" {
                scene = ch1lvl30Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl31" {
                scene = ch1lvl31Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl32" {
                scene = ch1lvl32Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl33" {
                scene = ch1lvl33Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl34" {
                scene = ch1lvl34Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl35" {
                scene = ch1lvl35Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl36" {
                scene = ch1lvl36Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl37" {
                scene = ch1lvl37Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl38" {
                scene = ch1lvl38Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl39" {
                scene = ch1lvl39Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl40" {
                scene = ch1lvl40Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl41" {
                scene = ch1lvl41Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl42" {
                scene = ch1lvl42Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl43" {
                scene = ch1lvl43Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl44" {
                scene = ch1lvl44Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl45" {
                scene = ch1lvl45Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl46" {
                scene = ch1lvl46Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl47" {
                scene = ch1lvl47Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl48" {
                scene = ch1lvl48Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl49" {
                scene = ch1lvl49Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl50" {
                scene = ch1lvl50Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl51" {
                scene = ch1lvl51Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl52" {
                scene = ch1lvl52Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl53" {
                scene = ch1lvl53Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl54" {
                scene = ch1lvl54Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl55" {
                scene = ch1lvl55Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl56" {
                scene = ch1lvl56Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl57" {
                scene = ch1lvl57Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl58" {
                scene = ch1lvl58Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl59" {
                scene = ch1lvl59Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl60" {
                scene = ch1lvl60Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl61" {
                scene = ch1lvl61Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl62" {
                scene = ch1lvl62Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl63" {
                scene = ch1lvl63Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl64" {
                scene = ch1lvl64Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl65" {
                scene = ch1lvl65Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl66" {
                scene = ch1lvl66Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl67" {
                scene = ch1lvl67Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl68" {
                 scene = ch1lvl68Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl69" {
                scene = ch1lvl69Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl70" {
                scene = ch1lvl70Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl71" {
                scene = ch1lvl71Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl72" {
                scene = ch1lvl72Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl73" {
                scene = ch1lvl73Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl74" {
                scene = ch1lvl74Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl75" {
                scene = ch1lvl75Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl76" {
                scene = ch1lvl76Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl77" {
                scene = ch1lvl77Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl78" {
                scene = ch1lvl78Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl79" {
                scene = ch1lvl79Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl80" {
                scene = ch1lvl80Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl81" {
                scene = ch1lvl81Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl82" {
                scene = ch1lvl82Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl83" {
                scene = ch1lvl83Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl84" {
                scene = ch1lvl84Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl85" {
                scene = ch1lvl85Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl86" {
                scene = ch1lvl86Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl87" {
                scene = ch1lvl87Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl88" {
                scene = ch1lvl88Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl89" {
                scene = ch1lvl89Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl90" {
                scene = ch1lvl90Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl91" {
                scene = ch1lvl91Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl92" {
                scene = ch1lvl92Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl93" {
                scene = ch1lvl93Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl94" {
                scene = ch1lvl94Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl95" {
                scene = ch1lvl95Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl96" {
                scene = ch1lvl96Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl97" {
                scene = ch1lvl97Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl98" {
                scene = ch1lvl98Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl99" {
                scene = ch1lvl99Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch1lvl100" {
                scene = ch1lvl100Scene(size: CGSize(width: 640, height: 1136))
            } else if self.continueBtnString == "ch2lvl1" {
                
            } else if self.continueBtnString == "ch2lvl2" {
                
            } else if self.continueBtnString == "ch2lvl3" {
                
            } else if self.continueBtnString == "ch2lvl4" {
                
            } else if self.continueBtnString == "ch2lvl5" {
                
            } else if self.continueBtnString == "ch2lvl6" {
                
            } else if self.continueBtnString == "ch2lvl7"{
                
            } else if self.continueBtnString == "ch2llv8" {
                
            } else if self.continueBtnString == "ch2lvl9" {
                
            } else if self.continueBtnString == "ch2lvl10" {
                
            } else if self.continueBtnString == "ch2lvl11" {
                
            } else if self.continueBtnString == "ch2lvl12" {
                
            } else if self.continueBtnString == "ch2lvl13" {
                
            } else if self.continueBtnString == "ch2lvl14" {
                
            } else if self.continueBtnString == "ch2lvl15" {
                
            } else if self.continueBtnString == "ch2lvl16" {
                
            } else if self.continueBtnString == "ch2lvl17" {
                
            } else if self.continueBtnString == "ch2lvl18" {
                
            } else if self.continueBtnString == "ch2lvl19" {
                
            } else if self.continueBtnString == "ch2lvl20" {
                
            } else if self.continueBtnString == "ch2lvl21" {
                
            } else if self.continueBtnString == "ch2lvl22" {
                
            } else if self.continueBtnString == "ch2lvl23" {
                
            } else if self.continueBtnString == "ch2lvl24" {
                
            } else if self.continueBtnString == "ch2lvl25" {
                
            } else if self.continueBtnString == "ch2lvl26" {
                
            } else if self.continueBtnString == "ch2lvl27" {
                
            } else if self.continueBtnString == "ch2lvl28" {
                
            } else if self.continueBtnString == "ch2lvl29" {
                
            } else if self.continueBtnString == "ch2lvl30" {
                
            } else if self.continueBtnString == "ch2lvl31" {
                
            } else if self.continueBtnString == "ch2lvl32" {
                
            } else if self.continueBtnString == "ch2lvl33" {
                
            } else if self.continueBtnString == "ch2lvl34" {
                
            } else if self.continueBtnString == "ch2lvl35" {
                
            } else if self.continueBtnString == "ch2lvl36" {
                
            } else if self.continueBtnString == "ch2lvl37" {
                
            } else if self.continueBtnString == "ch2lvl38" {
                
            } else if self.continueBtnString == "ch2lvl39" {
                
            } else if self.continueBtnString == "ch2lvl40" {
                
            } else if self.continueBtnString == "ch2lvl41" {
                
            } else if self.continueBtnString == "ch2lvl42" {
                
            } else if self.continueBtnString == "ch2lvl43" {
                
            } else if self.continueBtnString == "ch2lvl44" {
                
            } else if self.continueBtnString == "ch2lvl45" {
                
            } else if self.continueBtnString == "ch2lvl46" {
                
            } else if self.continueBtnString == "ch2lvl47" {
                
            } else if self.continueBtnString == "ch2lvl48" {
                
            } else if self.continueBtnString == "ch2lvl49" {
                
            } else if self.continueBtnString == "ch2lvl50" {
                
            } else if self.continueBtnString == "ch2lvl51" {
                
            } else if self.continueBtnString == "ch2lvl52" {
                
            } else if self.continueBtnString == "ch2lvl53" {
                
            } else if self.continueBtnString == "ch2lvl54" {
                
            } else if self.continueBtnString == "ch2lvl55" {
                
            } else if self.continueBtnString == "ch2lvl56" {
                
            } else if self.continueBtnString == "ch2lvl57" {
                
            } else if self.continueBtnString == "ch2lvl58" {
                
            } else if self.continueBtnString == "ch2lvl59" {
                
            } else if self.continueBtnString == "ch2lvl60" {
                
            } else if self.continueBtnString == "ch2lvl61" {
                
            } else if self.continueBtnString == "ch2lvl62" {
                
            } else if self.continueBtnString == "ch2lvl63" {
                
            } else if self.continueBtnString == "ch2lvl64" {
                
            } else if self.continueBtnString == "ch2lvl65" {
                
            } else if self.continueBtnString == "ch2lvl66" {
                
            } else if self.continueBtnString == "ch2lvl67" {
                
            } else if self.continueBtnString == "ch2lvl68" {
                
            } else if self.continueBtnString == "ch2lvl69" {
                
            } else if self.continueBtnString == "ch2lvl70" {
                
            } else if self.continueBtnString == "ch2lvl71" {
                
            } else if self.continueBtnString == "ch2lvl72" {
                
            } else if self.continueBtnString == "ch2lvl73" {
                
            } else if self.continueBtnString == "ch2lvl74" {
                
            } else if self.continueBtnString == "ch2lvl75" {
                
            } else if self.continueBtnString == "ch2lvl76" {
                
            } else if self.continueBtnString == "ch2lvl77" {
                
            } else if self.continueBtnString == "ch2lvl78" {
                
            } else if self.continueBtnString == "ch2lvl79" {
                
            } else if self.continueBtnString == "ch2lvl80" {
                
            } else if self.continueBtnString == "ch2lvl81" {
                
            } else if self.continueBtnString == "ch2lvl82" {
                
            } else if self.continueBtnString == "ch2lvl83" {
                
            } else if self.continueBtnString == "ch2lvl84" {
                
            } else if self.continueBtnString == "ch2lvl85" {
                
            } else if self.continueBtnString == "ch2lvl86" {
                
            } else if self.continueBtnString == "ch2lvl87" {
                
            } else if self.continueBtnString == "ch2lvl88" {
                
            } else if self.continueBtnString == "ch2lvl89" {
                
            } else if self.continueBtnString == "ch2lvl90" {
                
            } else if self.continueBtnString == "ch2lvl91" {
                
            } else if self.continueBtnString == "ch2lvl92" {
                
            } else if self.continueBtnString == "ch2lvl93" {
                
            } else if self.continueBtnString == "ch2lvl94" {
                
            } else if self.continueBtnString == "ch2lvl95" {
                
            } else if self.continueBtnString == "ch2lvl96" {
                
            } else if self.continueBtnString == "ch2lvl97" {
                
            } else if self.continueBtnString == "ch2lvl98" {
                
            } else if self.continueBtnString == "ch2lvl99" {
                
            } else if self.continueBtnString == "ch2lvl100" {
                
            } else if self.continueBtnString == "ch3lvl1" {
                
            } else if self.continueBtnString == "ch3lvl2" {
                
            } else if self.continueBtnString == "ch3lvl3" {
                
            } else if self.continueBtnString == "ch3lvl4" {
                
            } else if self.continueBtnString == "ch3lvl5" {
                
            } else if self.continueBtnString == "ch3lvl6" {
                
            } else if self.continueBtnString == "ch3lvl7" {
                
            } else if self.continueBtnString == "ch3lvl8" {
                
            } else if self.continueBtnString == "ch3lvl9" {
                
            } else if self.continueBtnString == "ch3lvl10" {
                
            } else if self.continueBtnString == "ch3lvl11" {
                
            } else if self.continueBtnString == "ch3lvl12" {
                
            } else if self.continueBtnString == "ch3lvl13" {
                
            } else if self.continueBtnString == "ch3lvl14" {
                
            } else if self.continueBtnString == "ch3lvl15" {
                
            } else if self.continueBtnString == "ch3lvl16" {
                
            } else if self.continueBtnString == "ch3lvl17" {
                
            } else if self.continueBtnString == "ch3lvl18" {
                
            } else if self.continueBtnString == "ch3lvl19" {
                
            } else if self.continueBtnString == "ch3lvl20" {
                
            } else if self.continueBtnString == "ch3lvl21" {
                
            } else if self.continueBtnString == "ch3lvl22" {
                
            } else if self.continueBtnString == "ch3lvl23" {
                
            } else if self.continueBtnString == "ch3lvl24" {
                
            } else if self.continueBtnString == "ch3lvl25" {
                
            } else if self.continueBtnString == "ch3lvl26" {
                
            } else if self.continueBtnString == "ch3lvl27" {
                
            } else if self.continueBtnString == "ch3lvl28" {
                
            } else if self.continueBtnString == "ch3lvl29" {
                
            } else if self.continueBtnString == "ch3lvl30" {
                
            } else if self.continueBtnString == "ch3lvl31" {
                
            } else if self.continueBtnString == "ch3lvl32" {
                
            } else if self.continueBtnString == "ch3lvl33" {
                
            } else if self.continueBtnString == "ch3lvl34" {
                
            } else if self.continueBtnString == "ch3lvl35" {
                
            } else if self.continueBtnString == "ch3lvl36" {
                
            } else if self.continueBtnString == "ch3lvl37" {
                
            } else if self.continueBtnString == "ch3lvl38" {
                
            } else if self.continueBtnString == "ch3lvl39" {
                
            } else if self.continueBtnString == "ch3lvl40" {
                
            } else if self.continueBtnString == "ch3lvl41" {
                
            } else if self.continueBtnString == "ch3lvl42" {
                
            } else if self.continueBtnString == "ch3lvl43" {
                
            } else if self.continueBtnString == "ch3lvl44" {
                
            } else if self.continueBtnString == "ch3lvl45" {
                
            } else if self.continueBtnString == "ch3lvl46" {
                
            } else if self.continueBtnString == "ch3lvl47" {
                
            } else if self.continueBtnString == "ch3lvl48" {
                
            } else if self.continueBtnString == "ch3lvl49" {
                
            } else if self.continueBtnString == "ch3lvl50" {
                
            } else if self.continueBtnString == "ch3lvl51" {
                
            } else if self.continueBtnString == "ch3lvl52" {
                
            } else if self.continueBtnString == "ch3lvl53" {
                
            } else if self.continueBtnString == "ch3lvl54" {
                
            } else if self.continueBtnString == "ch3lvl55" {
                
            } else if self.continueBtnString == "ch3lvl56" {
                
            } else if self.continueBtnString == "ch3lvl57" {
                
            } else if self.continueBtnString == "ch3lvl58" {
                
            } else if self.continueBtnString == "ch3lvl59" {
                
            } else if self.continueBtnString == "ch3lvl60" {
                
            } else if self.continueBtnString == "ch3lvl61" {
                
            } else if self.continueBtnString == "ch3lvl62" {
                
            } else if self.continueBtnString == "ch3lvl63" {
                
            } else if self.continueBtnString == "ch3lvl64" {
                
            } else if self.continueBtnString == "ch3lvl65" {
                
            } else if self.continueBtnString == "ch3lvl66" {
                
            } else if self.continueBtnString == "ch3lvl67" {
                
            } else if self.continueBtnString == "ch3lvl68" {
                
            } else if self.continueBtnString == "ch3lvl69" {
                
            } else if self.continueBtnString == "ch3lvl70" {
                
            } else if self.continueBtnString == "ch3lvl71" {
                
            } else if self.continueBtnString == "ch3lvl72" {
                
            } else if self.continueBtnString == "ch3lvl73" {
                
            } else if self.continueBtnString == "ch3lvl74" {
                
            } else if self.continueBtnString == "ch3lvl75" {
                
            } else if self.continueBtnString == "ch3lvl76" {
                
            } else if self.continueBtnString == "ch3lvl77" {
                
            } else if self.continueBtnString == "ch3lvl78" {
                
            } else if self.continueBtnString == "ch3lvl79" {
                
            } else if self.continueBtnString == "ch3lvl80" {
                
            } else if self.continueBtnString == "ch3lvl81" {
                
            } else if self.continueBtnString == "ch3lvl82" {
                
            } else if self.continueBtnString == "ch3lvl83" {
                
            } else if self.continueBtnString == "ch3lvl84" {
                
            } else if self.continueBtnString == "ch3lvl85" {
                
            } else if self.continueBtnString == "ch3lvl86" {
                
            } else if self.continueBtnString == "ch3lvl87" {
                
            } else if self.continueBtnString == "ch3lvl88" {
                
            } else if self.continueBtnString == "ch3lvl89" {
                
            } else if self.continueBtnString == "ch3lvl90" {
                
            } else if self.continueBtnString == "ch3lvl91" {
                
            } else if self.continueBtnString == "ch3lvl92" {
                
            } else if self.continueBtnString == "ch3lvl93" {
                
            } else if self.continueBtnString == "ch3lvl94" {
                
            } else if self.continueBtnString == "ch3lvl95" {
                
            } else if self.continueBtnString == "ch3lvl96" {
                
            } else if self.continueBtnString == "ch3lvl97" {
                
            } else if self.continueBtnString == "ch3lvl98" {
                
            } else if self.continueBtnString == "ch3lvl99" {
                
            } else if self.continueBtnString == "ch3lvl100" {
                
            } else if self.continueBtnString == "ch4lvl1" {
                
            } else if self.continueBtnString == "ch4lvl2" {
                
            } else if self.continueBtnString == "ch4lvl3" {
                
            } else if self.continueBtnString == "ch4lvl4" {
                
            } else if self.continueBtnString == "ch4lvl5" {
                
            } else if self.continueBtnString == "ch4lvl6" {
                
            } else if self.continueBtnString == "ch4lvl7" {
                
            } else if self.continueBtnString == "ch4lvl8" {
                
            } else if self.continueBtnString == "ch4lvl9" {
                
            } else if self.continueBtnString == "ch4lvl10" {
                
            } else if self.continueBtnString == "ch4lvl11" {
                
            } else if self.continueBtnString == "ch4lvl12" {
                
            } else if self.continueBtnString == "ch4lvl13" {
                
            } else if self.continueBtnString == "ch4lvl14" {
                
            } else if self.continueBtnString == "ch4lvl15" {
                
            } else if self.continueBtnString == "ch4lvl16" {
                
            } else if self.continueBtnString == "ch4lvl17" {
                
            } else if self.continueBtnString == "ch4lvl18" {
                
            } else if self.continueBtnString == "ch4lvl19" {
                
            } else if self.continueBtnString == "ch4lvl20" {
                
            } else if self.continueBtnString == "ch4lvl21" {
                
            } else if self.continueBtnString == "ch4lvl22" {
                
            } else if self.continueBtnString == "ch4lvl23" {
                
            } else if self.continueBtnString == "ch4lvl24" {
                
            } else if self.continueBtnString == "ch4lvl25" {
                
            } else if self.continueBtnString == "ch4lvl26" {
                
            } else if self.continueBtnString == "ch4lvl27" {
                
            } else if self.continueBtnString == "ch4lvl28" {
                
            } else if self.continueBtnString == "ch4lvl29" {
                
            } else if self.continueBtnString == "ch4lvl30" {
                
            } else if self.continueBtnString == "ch4lvl31" {
                
            } else if self.continueBtnString == "ch4lvl32" {
                
            } else if self.continueBtnString == "ch4lvl33" {
                
            } else if self.continueBtnString == "ch4lvl34" {
                
            } else if self.continueBtnString == "ch4lvl35" {
                
            } else if self.continueBtnString == "ch4lvl36" {
                
            } else if self.continueBtnString == "ch4lvl37" {
                
            } else if self.continueBtnString == "ch4lvl38" {
                
            } else if self.continueBtnString == "ch4lvl39" {
                
            } else if self.continueBtnString == "ch4lvl40" {
                
            } else if self.continueBtnString == "ch4lvl41" {
                
            } else if self.continueBtnString == "ch4lvl42" {
                
            } else if self.continueBtnString == "ch4lvl43" {
                
            } else if self.continueBtnString == "ch4lvl44" {
                
            } else if self.continueBtnString == "ch4lvl45" {
                
            } else if self.continueBtnString == "ch4lvl46" {
                
            } else if self.continueBtnString == "ch4lvl47" {
                
            } else if self.continueBtnString == "ch4lvl48" {
                
            } else if self.continueBtnString == "ch4lvl49" {
                
            } else if self.continueBtnString == "ch4lvl50" {
                
            } else if self.continueBtnString == "ch4lvl51" {
                
            } else if self.continueBtnString == "ch4lvl52" {
                
            } else if self.continueBtnString == "ch4lvl53" {
                
            } else if self.continueBtnString == "ch4lvl54" {
                
            } else if self.continueBtnString == "ch4lvl55" {
                
            } else if self.continueBtnString == "ch4lvl56" {
                
            } else if self.continueBtnString == "ch4lvl57" {
                
            } else if self.continueBtnString == "ch4lvl58" {
                
            } else if self.continueBtnString == "ch4lvl59" {
                
            } else if self.continueBtnString == "ch4lvl60" {
                
            } else if self.continueBtnString == "ch4lvl61" {
                
            } else if self.continueBtnString == "ch4lvl62" {
                
            } else if self.continueBtnString == "ch4lvl63" {
                
            } else if self.continueBtnString == "ch4lvl64" {
                
            } else if self.continueBtnString == "ch4lvl65" {
                
            } else if self.continueBtnString == "ch4lvl66" {
                
            } else if self.continueBtnString == "ch4lvl67" {
                
            } else if self.continueBtnString == "ch4lvl68" {
                
            } else if self.continueBtnString == "ch4lvl69" {
                
            } else if self.continueBtnString == "ch4lvl70" {
                
            } else if self.continueBtnString == "ch4lvl71" {
                
            } else if self.continueBtnString == "ch4lvl72" {
                
            } else if self.continueBtnString == "ch4lvl73" {
                
            } else if self.continueBtnString == "ch4lvl74" {
                
            } else if self.continueBtnString == "ch4lvl75" {
                
            } else if self.continueBtnString == "ch4lvl76" {
                
            } else if self.continueBtnString == "ch4lvl77" {
                
            } else if self.continueBtnString == "ch4lvl78" {
                
            } else if self.continueBtnString == "ch4lvl79" {
                
            } else if self.continueBtnString == "ch4lvl80" {
                
            } else if self.continueBtnString == "ch4lvl81" {
                
            } else if self.continueBtnString == "ch4lvl82" {
                
            } else if self.continueBtnString == "ch4lvl83" {
                
            } else if self.continueBtnString == "ch4lvl84" {
                
            } else if self.continueBtnString == "ch4lvl85" {
                
            } else if self.continueBtnString == "ch4lvl86" {
                
            } else if self.continueBtnString == "ch4lvl87" {
                
            } else if self.continueBtnString == "ch4lvl88" {
                
            } else if self.continueBtnString == "ch4lvl89" {
                
            } else if self.continueBtnString == "ch4lvl90" {
                
            } else if self.continueBtnString == "ch4lvl91" {
                
            } else if self.continueBtnString == "ch4lvl92" {
                
            } else if self.continueBtnString == "ch4lvl93" {
                
            } else if self.continueBtnString == "ch4lvl94" {
                
            } else if self.continueBtnString == "ch4lvl95" {
                
            } else if self.continueBtnString == "ch4lvl96" {
                
            } else if self.continueBtnString == "ch4lvl97" {
                
            } else if self.continueBtnString == "ch4lvl98" {
                
            } else if self.continueBtnString == "ch4lvl99" {
                
            } else if self.continueBtnString == "ch4lvl100" {
                
            } else if self.continueBtnString == "ch5lvl1" {
                
            } else if self.continueBtnString == "ch5lvl2" {
                
            } else if self.continueBtnString == "ch5lvl3" {
                
            } else if self.continueBtnString == "ch5lvl4" {
                
            } else if self.continueBtnString == "ch5lvl5" {
                
            } else if self.continueBtnString == "ch5lvl6" {
                
            } else if self.continueBtnString == "ch5lvl7" {
                
            } else if self.continueBtnString == "ch5lvl8" {
                
            } else if self.continueBtnString == "ch5lvl9" {
                
            } else if self.continueBtnString == "ch5lvl10" {
                
            } else if self.continueBtnString == "ch5lvl11" {
                
            } else if self.continueBtnString == "ch5lvl12" {
                
            } else if self.continueBtnString == "ch5lvl13" {
                
            } else if self.continueBtnString == "ch5lvl14" {
                
            } else if self.continueBtnString == "ch5lvl15" {
                
            } else if self.continueBtnString == "ch5lvl16" {
                
            } else if self.continueBtnString == "ch5lvl17" {
                
            } else if self.continueBtnString == "ch5lvl18" {
                
            } else if self.continueBtnString == "ch5lvl19" {
                
            } else if self.continueBtnString == "ch5lvl20" {
                
            } else if self.continueBtnString == "ch5lvl21" {
                
            } else if self.continueBtnString == "ch5lvl22" {
                
            } else if self.continueBtnString == "ch5lvl23" {
                
            } else if self.continueBtnString == "ch5lvl24" {
                
            } else if self.continueBtnString == "ch5lvl25" {
                
            } else if self.continueBtnString == "ch5lvl26" {
                
            } else if self.continueBtnString == "ch5lvl27" {
                
            } else if self.continueBtnString == "ch5lvl28" {
                
            } else if self.continueBtnString == "ch5lvl29" {
                
            } else if self.continueBtnString == "ch5lvl30" {
                
            } else if self.continueBtnString == "ch5lvl31" {
                
            } else if self.continueBtnString == "ch5lvl32" {
                
            } else if self.continueBtnString == "ch5lvl33" {
                
            } else if self.continueBtnString == "ch5lvl34" {
                
            } else if self.continueBtnString == "ch5lvl35" {
                
            } else if self.continueBtnString == "ch5lvl36" {
                
            } else if self.continueBtnString == "ch5lvl37" {
                
            } else if self.continueBtnString == "ch5lvl38" {
                
            } else if self.continueBtnString == "ch5lvl39" {
                
            } else if self.continueBtnString == "ch5lvl40" {
                
            } else if self.continueBtnString == "ch5lvl41" {
                
            } else if self.continueBtnString == "ch5lvl42" {
                
            } else if self.continueBtnString == "ch5lvl43" {
                
            } else if self.continueBtnString == "ch5lvl44" {
                
            } else if self.continueBtnString == "ch5lvl45" {
                
            } else if self.continueBtnString == "ch5lvl46" {
                
            } else if self.continueBtnString == "ch5lvl47" {
                
            } else if self.continueBtnString == "ch5lvl48" {
                
            } else if self.continueBtnString == "ch5lvl49" {
                
            } else if self.continueBtnString == "ch5lvl50" {
                
            } else if self.continueBtnString == "ch5lvl51" {
                
            } else if self.continueBtnString == "ch5lvl52" {
                
            } else if self.continueBtnString == "ch5lvl53" {
                
            } else if self.continueBtnString == "ch5lvl54" {
                
            } else if self.continueBtnString == "ch5lvl55" {
                
            } else if self.continueBtnString == "ch5lvl56" {
                
            } else if self.continueBtnString == "ch5lvl57" {
                
            } else if self.continueBtnString == "ch5lvl58" {
                
            } else if self.continueBtnString == "ch5lvl59" {
                
            } else if self.continueBtnString == "ch5lvl60" {
                
            } else if self.continueBtnString == "ch5lvl61" {
                
            } else if self.continueBtnString == "ch5lvl62" {
                
            } else if self.continueBtnString == "ch5lvl63" {
                
            } else if self.continueBtnString == "ch5lvl64" {
                
            } else if self.continueBtnString == "ch5lvl65" {
                
            } else if self.continueBtnString == "ch5lvl66" {
                
            } else if self.continueBtnString == "ch5lvl67" {
                
            } else if self.continueBtnString == "ch5lvl68" {
                
            } else if self.continueBtnString == "ch5lvl69" {
                
            } else if self.continueBtnString == "ch5lvl70" {
                
            } else if self.continueBtnString == "ch5lvl71" {
                
            } else if self.continueBtnString == "ch5lvl72" {
                
            } else if self.continueBtnString == "ch5lvl73" {
                
            } else if self.continueBtnString == "ch5lvl74" {
                
            } else if self.continueBtnString == "ch5lvl75" {
                
            } else if self.continueBtnString == "ch5lvl76" {
                
            } else if self.continueBtnString == "ch5lvl77" {
                
            } else if self.continueBtnString == "ch5lvl78" {
                
            } else if self.continueBtnString == "ch5lvl79" {
                
            } else if self.continueBtnString == "ch5lvl80" {
                
            } else if self.continueBtnString == "ch5lvl81" {
                
            } else if self.continueBtnString == "ch5lvl82" {
                
            } else if self.continueBtnString == "ch5lvl83" {
                
            } else if self.continueBtnString == "ch5lvl84" {
                
            } else if self.continueBtnString == "ch5lvl85" {
                
            } else if self.continueBtnString == "ch5lvl86" {
                
            } else if self.continueBtnString == "ch5lvl87" {
                
            } else if self.continueBtnString == "ch5lvl88" {
                
            } else if self.continueBtnString == "ch5lvl89" {
                
            } else if self.continueBtnString == "ch5lvl90" {
                
            } else if self.continueBtnString == "ch5lvl91" {
                
            } else if self.continueBtnString == "ch5lvl92" {
                
            } else if self.continueBtnString == "ch5lvl93" {
                
            } else if self.continueBtnString == "ch5lvl94" {
                
            } else if self.continueBtnString == "ch5lvl95" {
                
            } else if self.continueBtnString == "ch5lvl96" {
                
            } else if self.continueBtnString == "ch5lvl97" {
                
            } else if self.continueBtnString == "ch5lvl98" {
                
            } else if self.continueBtnString == "ch5lvl99" {
                
            } else if self.continueBtnString == "ch5lvl100" {
                
            } else if self.continueBtnString == "ch6lvl1" {
                
            } else if self.continueBtnString == "ch6lvl2" {
                
            } else if self.continueBtnString == "ch6lvl3" {
                
            } else if self.continueBtnString == "ch6lvl4" {
                
            } else if self.continueBtnString == "ch6lvl5" {
                
            } else if self.continueBtnString == "ch6lvl6" {
                
            } else if self.continueBtnString == "ch6lvl7" {
                
            } else if self.continueBtnString == "ch6lvl8" {
                
            } else if self.continueBtnString == "ch6lvl9" {
                
            } else if self.continueBtnString == "ch6lvl10" {
                
            } else if self.continueBtnString == "ch6lvl11" {
                
            } else if self.continueBtnString == "ch6lvl12" {
                
            } else if self.continueBtnString == "ch6lvl13" {
                
            } else if self.continueBtnString == "ch6lvl14" {
                
            } else if self.continueBtnString == "ch6lvl15" {
                
            } else if self.continueBtnString == "ch6lvl16" {
                
            } else if self.continueBtnString == "ch6lvl17" {
                
            } else if self.continueBtnString == "ch6lvl18" {
                
            } else if self.continueBtnString == "ch6lvl19" {
                
            } else if self.continueBtnString == "ch6lvl20" {
                
            } else if self.continueBtnString == "ch6lvl21" {
                
            } else if self.continueBtnString == "ch6lvl22" {
                
            } else if self.continueBtnString == "ch6lvl23" {
                
            } else if self.continueBtnString == "ch6lvl24" {
                
            } else if self.continueBtnString == "ch6lvl25" {
                
            } else if self.continueBtnString == "ch6lvl26" {
                
            } else if self.continueBtnString == "ch6lvl27" {
                
            } else if self.continueBtnString == "ch6lvl28" {
                
            } else if self.continueBtnString == "ch6lvl29" {
                
            } else if self.continueBtnString == "ch6lvl30" {
                
            } else if self.continueBtnString == "ch6lvl31" {
                
            } else if self.continueBtnString == "ch6lvl32" {
                
            } else if self.continueBtnString == "ch6lvl33" {
                
            } else if self.continueBtnString == "ch6lvl34" {
                
            } else if self.continueBtnString == "ch6lvl35" {
                
            } else if self.continueBtnString == "ch6lvl36" {
                
            } else if self.continueBtnString == "ch6lvl37" {
                
            } else if self.continueBtnString == "ch6lvl38" {
                
            } else if self.continueBtnString == "ch6lvl39" {
                
            } else if self.continueBtnString == "ch6lvl40" {
                
            } else if self.continueBtnString == "ch6lvl41" {
                
            } else if self.continueBtnString == "ch6lvl42" {
                
            } else if self.continueBtnString == "ch6lvl43" {
                
            } else if self.continueBtnString == "ch6lvl44" {
                
            } else if self.continueBtnString == "ch6lvl45" {
                
            } else if self.continueBtnString == "ch6lvl46" {
                
            } else if self.continueBtnString == "ch6lvl47" {
                
            } else if self.continueBtnString == "ch6lvl48" {
                
            } else if self.continueBtnString == "ch6lvl49" {
                
            } else if self.continueBtnString == "ch6lvl50" {
                
            } else if self.continueBtnString == "ch6lvl51" {
                
            } else if self.continueBtnString == "ch6lvl52" {
                
            } else if self.continueBtnString == "ch6lvl53" {
                
            } else if self.continueBtnString == "ch6lvl54" {
                
            } else if self.continueBtnString == "ch6lvl55" {
                
            } else if self.continueBtnString == "ch6lvl56" {
                
            } else if self.continueBtnString == "ch6lvl57" {
                
            } else if self.continueBtnString == "ch6lvl58" {
                
            } else if self.continueBtnString == "ch6lvl59" {
                
            } else if self.continueBtnString == "ch6lvl60" {
                
            } else if self.continueBtnString == "ch6lvl61" {
                
            } else if self.continueBtnString == "ch6lvl62" {
                
            } else if self.continueBtnString == "ch6lvl63" {
                
            } else if self.continueBtnString == "ch6lvl64" {
                
            } else if self.continueBtnString == "ch6lvl65" {
                
            } else if self.continueBtnString == "ch6lvl66" {
                
            } else if self.continueBtnString == "ch6lvl67" {
                
            } else if self.continueBtnString == "ch6lvl68" {
                
            } else if self.continueBtnString == "ch6lvl69" {
                
            } else if self.continueBtnString == "ch6lvl70" {
                
            } else if self.continueBtnString == "ch6lvl71" {
                
            } else if self.continueBtnString == "ch6lvl72" {
                
            } else if self.continueBtnString == "ch6lvl73" {
                
            } else if self.continueBtnString == "ch6lvl74" {
                
            } else if self.continueBtnString == "ch6lvl75" {
                
            } else if self.continueBtnString == "ch6lvl76" {
                
            } else if self.continueBtnString == "ch6lvl77" {
                
            } else if self.continueBtnString == "ch6lvl78" {
                
            } else if self.continueBtnString == "ch6lvl79" {
                
            } else if self.continueBtnString == "ch6lvl80" {
                
            } else if self.continueBtnString == "ch6lvl81" {
                
            } else if self.continueBtnString == "ch6lvl82" {
                
            } else if self.continueBtnString == "ch6lvl83" {
                
            } else if self.continueBtnString == "ch6lvl84" {
                
            } else if self.continueBtnString == "ch6lvl85" {
                
            } else if self.continueBtnString == "ch6lvl86" {
                
            } else if self.continueBtnString == "ch6lvl87" {
                
            } else if self.continueBtnString == "ch6lvl88" {
                
            } else if self.continueBtnString == "ch6lvl89" {
                
            } else if self.continueBtnString == "ch6lvl90" {
                
            } else if self.continueBtnString == "ch6lvl91" {
                
            } else if self.continueBtnString == "ch6lvl92" {
                
            } else if self.continueBtnString == "ch6lvl93" {
                
            } else if self.continueBtnString == "ch6lvl94" {
                
            } else if self.continueBtnString == "ch6lvl95" {
                
            } else if self.continueBtnString == "ch6lvl96" {
                
            } else if self.continueBtnString == "ch6lvl97" {
                
            } else if self.continueBtnString == "ch6lvl98" {
                
            } else if self.continueBtnString == "ch6lvl99" {
                
            } else if self.continueBtnString == "ch6lvl100" {
                
            } else if self.continueBtnString == "ch7lvl1" {
                
            } else if self.continueBtnString == "ch7lvl2" {
                
            } else if self.continueBtnString == "ch7lvl3" {
                
            } else if self.continueBtnString == "ch7lvl4" {
                
            } else if self.continueBtnString == "ch7lvl5" {
                
            } else if self.continueBtnString == "ch7lvl6" {
                
            } else if self.continueBtnString == "ch7lvl7" {
                
            } else if self.continueBtnString == "ch7lvl8" {
                
            } else if self.continueBtnString == "ch7lvl9" {
                
            } else if self.continueBtnString == "ch7lvl10" {
                
            } else if self.continueBtnString == "ch7lvl11" {
                
            } else if self.continueBtnString == "ch7lvl12" {
                
            } else if self.continueBtnString == "ch7lvl13" {
                
            } else if self.continueBtnString == "ch7lvl14" {
                
            } else if self.continueBtnString == "ch7lvl15" {
                
            } else if self.continueBtnString == "ch7lvl16" {
                
            } else if self.continueBtnString == "ch7lvl17" {
                
            } else if self.continueBtnString == "ch7lvl18" {
                
            } else if self.continueBtnString == "ch7lvl19" {
                
            } else if self.continueBtnString == "ch7lvl20" {
                
            } else if self.continueBtnString == "ch7lvl21" {
                
            } else if self.continueBtnString == "ch7lvl22" {
                
            } else if self.continueBtnString == "ch7lvl23" {
                
            } else if self.continueBtnString == "ch7lvl24" {
                
            } else if self.continueBtnString == "ch7lvl25" {
                
            } else if self.continueBtnString == "ch7lvl26" {
                
            } else if self.continueBtnString == "ch7lvl27" {
                
            } else if self.continueBtnString == "ch7lvl28" {
                
            } else if self.continueBtnString == "ch7lvl29" {
                
            } else if self.continueBtnString == "ch7lvl30" {
                
            } else if self.continueBtnString == "ch7lvl31" {
                
            } else if self.continueBtnString == "ch7lvl32" {
                
            } else if self.continueBtnString == "ch7lvl33" {
                
            } else if self.continueBtnString == "ch7lvl34" {
                
            } else if self.continueBtnString == "ch7lvl35" {
                
            } else if self.continueBtnString == "ch7lvl36" {
                
            } else if self.continueBtnString == "ch7lvl37" {
                
            } else if self.continueBtnString == "ch7lvl38" {
                
            } else if self.continueBtnString == "ch7lvl39" {
                
            } else if self.continueBtnString == "ch7lvl40" {
                
            } else if self.continueBtnString == "ch7lvl41" {
                
            } else if self.continueBtnString == "ch7lvl42" {
                
            } else if self.continueBtnString == "ch7lvl43" {
                
            } else if self.continueBtnString == "ch7lvl44" {
                
            } else if self.continueBtnString == "ch7lvl45" {
                
            } else if self.continueBtnString == "ch7lvl46" {
                
            } else if self.continueBtnString == "ch7lvl47" {
                
            } else if self.continueBtnString == "ch7lvl48" {
                
            } else if self.continueBtnString == "ch7lvl49" {
                
            } else if self.continueBtnString == "ch7lvl50" {
                
            } else if self.continueBtnString == "ch7lvl51" {
                
            } else if self.continueBtnString == "ch7lvl52" {
                
            } else if self.continueBtnString == "ch7lvl53" {
                
            } else if self.continueBtnString == "ch7lvl54" {
                
            } else if self.continueBtnString == "ch7lvl55" {
                
            } else if self.continueBtnString == "ch7lvl56" {
                
            } else if self.continueBtnString == "ch7lvl57" {
                
            } else if self.continueBtnString == "ch7lvl58" {
                
            } else if self.continueBtnString == "ch7lvl59" {
                
            } else if self.continueBtnString == "ch7lvl60" {
                
            } else if self.continueBtnString == "ch7lvl61" {
                
            } else if self.continueBtnString == "ch7lvl62" {
                
            } else if self.continueBtnString == "ch7lvl63" {
                
            } else if self.continueBtnString == "ch7lvl64" {
                
            } else if self.continueBtnString == "ch7lvl65" {
                
            } else if self.continueBtnString == "ch7lvl66" {
                
            } else if self.continueBtnString == "ch7lvl67" {
                
            } else if self.continueBtnString == "ch7lvl68" {
                
            } else if self.continueBtnString == "ch7lvl69" {
                
            } else if self.continueBtnString == "ch7lvl70" {
                
            } else if self.continueBtnString == "ch7lvl71" {
                
            } else if self.continueBtnString == "ch7lvl72" {
                
            } else if self.continueBtnString == "ch7lvl73" {
                
            } else if self.continueBtnString == "ch7lvl74" {
                
            } else if self.continueBtnString == "ch7lvl75" {
                
            } else if self.continueBtnString == "ch7lvl76" {
                
            } else if self.continueBtnString == "ch7lvl77" {
                
            } else if self.continueBtnString == "ch7lvl78" {
                
            } else if self.continueBtnString == "ch7lvl79" {
                
            } else if self.continueBtnString == "ch7lvl80" {
                
            } else if self.continueBtnString == "ch7lvl81" {
                
            } else if self.continueBtnString == "ch7lvl82" {
                
            } else if self.continueBtnString == "ch7lvl83" {
                
            } else if self.continueBtnString == "ch7lvl84" {
                
            } else if self.continueBtnString == "ch7lvl85" {
                
            } else if self.continueBtnString == "ch7lvl86" {
                
            } else if self.continueBtnString == "ch7lvl87" {
                
            } else if self.continueBtnString == "ch7lvl88" {
                
            } else if self.continueBtnString == "ch7lvl89" {
                
            } else if self.continueBtnString == "ch7lvl90" {
                
            } else if self.continueBtnString == "ch7lvl91" {
                
            } else if self.continueBtnString == "ch7lvl92" {
                
            } else if self.continueBtnString == "ch7lvl93" {
                
            } else if self.continueBtnString == "ch7lvl94" {
                
            } else if self.continueBtnString == "ch7lvl95" {
                
            } else if self.continueBtnString == "ch7lvl96" {
                
            } else if self.continueBtnString == "ch7lvl97" {
                
            } else if self.continueBtnString == "ch7lvl98" {
                
            } else if self.continueBtnString == "ch7lvl99" {
                
            } else if self.continueBtnString == "ch7lvl100" {
                
            } else if self.continueBtnString == "ch8lvl1" {
                
            } else if self.continueBtnString == "ch8lvl2" {
                
            } else if self.continueBtnString == "ch8lvl3" {
                
            } else if self.continueBtnString == "ch8lvl4" {
                
            } else if self.continueBtnString == "ch8lvl5" {
                
            } else if self.continueBtnString == "ch8lvl6" {
                
            } else if self.continueBtnString == "ch8lvl7" {
                
            } else if self.continueBtnString == "ch8lvl8" {
                
            } else if self.continueBtnString == "ch8lvl9" {
                
            } else if self.continueBtnString == "ch8lvl10" {
                
            } else if self.continueBtnString == "ch8lvl11" {
                
            } else if self.continueBtnString == "ch8lvl12" {
                
            } else if self.continueBtnString == "ch8lvl13" {
                
            } else if self.continueBtnString == "ch8lvl14" {
                
            } else if self.continueBtnString == "ch8lvl15" {
                
            } else if self.continueBtnString == "ch8lvl16" {
                
            } else if self.continueBtnString == "ch8lvl17" {
                
            } else if self.continueBtnString == "ch8lvl18" {
                
            } else if self.continueBtnString == "ch8lvl19" {
                
            } else if self.continueBtnString == "ch8lvl20" {
                
            } else if self.continueBtnString == "ch8lvl21" {
                
            } else if self.continueBtnString == "ch8lvl22" {
                
            } else if self.continueBtnString == "ch8lvl23" {
                
            } else if self.continueBtnString == "ch8lvl24" {
                
            } else if self.continueBtnString == "ch8lvl25" {
                
            } else if self.continueBtnString == "ch8lvl26" {
                
            } else if self.continueBtnString == "ch8lvl27" {
                
            } else if self.continueBtnString == "ch8lvl28" {
                
            } else if self.continueBtnString == "ch8lvl29" {
                
            } else if self.continueBtnString == "ch8lvl30" {
                
            } else if self.continueBtnString == "ch8lvl31" {
                
            } else if self.continueBtnString == "ch8lvl32" {
                
            } else if self.continueBtnString == "ch8lvl33" {
                
            } else if self.continueBtnString == "ch8lvl34" {
                
            } else if self.continueBtnString == "ch8lvl35" {
                
            } else if self.continueBtnString == "ch8lvl36" {
                
            } else if self.continueBtnString == "ch8lvl37" {
                
            } else if self.continueBtnString == "ch8lvl38" {
                
            } else if self.continueBtnString == "ch8lvl39" {
                
            } else if self.continueBtnString == "ch8lvl40" {
                
            } else if self.continueBtnString == "ch8lvl41" {
                
            } else if self.continueBtnString == "ch8lvl42" {
                
            } else if self.continueBtnString == "ch8lvl43" {
                
            } else if self.continueBtnString == "ch8lvl44" {
                
            } else if self.continueBtnString == "ch8lvl45" {
                
            } else if self.continueBtnString == "ch8lvl46" {
                
            } else if self.continueBtnString == "ch8lvl47" {
                
            } else if self.continueBtnString == "ch8lvl48" {
                
            } else if self.continueBtnString == "ch8lvl49" {
                
            } else if self.continueBtnString == "ch8lvl50" {
                
            } else if self.continueBtnString == "ch8lvl51" {
                
            } else if self.continueBtnString == "ch8lvl52" {
                
            } else if self.continueBtnString == "ch8lvl53" {
                
            } else if self.continueBtnString == "ch8lvl54" {
                
            } else if self.continueBtnString == "ch8lvl55" {
                
            } else if self.continueBtnString == "ch8lvl56" {
                
            } else if self.continueBtnString == "ch8lvl57" {
                
            } else if self.continueBtnString == "ch8lvl58" {
                
            } else if self.continueBtnString == "ch8lvl59" {
                
            } else if self.continueBtnString == "ch8lvl60" {
                
            } else if self.continueBtnString == "ch8lvl61" {
                
            } else if self.continueBtnString == "ch8lvl62" {
                
            } else if self.continueBtnString == "ch8lvl63" {
                
            } else if self.continueBtnString == "ch8lvl64" {
                
            } else if self.continueBtnString == "ch8lvl65" {
                
            } else if self.continueBtnString == "ch8lvl66" {
                
            } else if self.continueBtnString == "ch8lvl67" {
                
            } else if self.continueBtnString == "ch8lvl68" {
                
            } else if self.continueBtnString == "ch8lvl69" {
                
            } else if self.continueBtnString == "ch8lvl70" {
                
            } else if self.continueBtnString == "ch8lvl71" {
                
            } else if self.continueBtnString == "ch8lvl72" {
                
            } else if self.continueBtnString == "ch8lvl73" {
                
            } else if self.continueBtnString == "ch8lvl74" {
                
            } else if self.continueBtnString == "ch8lvl75" {
                
            } else if self.continueBtnString == "ch8lvl76" {
                
            } else if self.continueBtnString == "ch8lvl77" {
                
            } else if self.continueBtnString == "ch8lvl78" {
                
            } else if self.continueBtnString == "ch8lvl79" {
                
            } else if self.continueBtnString == "ch8lvl80" {
                
            } else if self.continueBtnString == "ch8lvl81" {
                
            } else if self.continueBtnString == "ch8lvl82" {
                
            } else if self.continueBtnString == "ch8lvl83" {
                
            } else if self.continueBtnString == "ch8lvl84" {
                
            } else if self.continueBtnString == "ch8lvl85" {
                
            } else if self.continueBtnString == "ch8lvl86" {
                
            } else if self.continueBtnString == "ch8lvl87" {
                
            } else if self.continueBtnString == "ch8lvl88" {
                
            } else if self.continueBtnString == "ch8lvl89" {
                
            } else if self.continueBtnString == "ch8lvl90" {
                
            } else if self.continueBtnString == "ch8lvl91" {
                
            } else if self.continueBtnString == "ch8lvl92" {
                
            } else if self.continueBtnString == "ch8lvl93" {
                
            } else if self.continueBtnString == "ch8lvl94" {
                
            } else if self.continueBtnString == "ch8lvl95" {
                
            } else if self.continueBtnString == "ch8lvl96" {
                
            } else if self.continueBtnString == "ch8lvl97" {
                
            } else if self.continueBtnString == "ch8lvl98" {
                
            } else if self.continueBtnString == "ch8lvl99" {
                
            } else if self.continueBtnString == "ch8lvl100" {
                
            } else if self.continueBtnString == "ch9lvl1" {
                
            } else if self.continueBtnString == "ch9lvl2" {
                
            } else if self.continueBtnString == "ch9lvl3" {
                
            } else if self.continueBtnString == "ch9lvl4" {
                
            } else if self.continueBtnString == "ch9lvl5" {
                
            } else if self.continueBtnString == "ch9lvl6" {
                
            } else if self.continueBtnString == "ch9lvl7" {
                
            } else if self.continueBtnString == "ch9lvl8" {
                
            } else if self.continueBtnString == "ch9lvl9" {
                
            } else if self.continueBtnString == "ch9lvl10" {
                
            } else if self.continueBtnString == "ch9lvl11" {
                
            } else if self.continueBtnString == "ch9lvl12" {
                
            } else if self.continueBtnString == "ch9lvl13" {
                
            } else if self.continueBtnString == "ch9lvl14" {
                
            } else if self.continueBtnString == "ch9lvl15" {
                
            } else if self.continueBtnString == "ch9lvl16" {
                
            } else if self.continueBtnString == "ch9lvl17" {
                
            } else if self.continueBtnString == "ch9lvl18" {
                
            } else if self.continueBtnString == "ch9lvl19" {
                
            } else if self.continueBtnString == "ch9lvl20" {
                
            } else if self.continueBtnString == "ch9lvl21" {
                
            } else if self.continueBtnString == "ch9lvl22" {
                
            } else if self.continueBtnString == "ch9lvl23" {
                
            } else if self.continueBtnString == "ch9lvl24" {
                
            } else if self.continueBtnString == "ch9lvl25" {
                
            } else if self.continueBtnString == "ch9lvl26" {
                
            } else if self.continueBtnString == "ch9lvl27" {
                
            } else if self.continueBtnString == "ch9lvl28" {
                
            } else if self.continueBtnString == "ch9lvl29" {
                
            } else if self.continueBtnString == "ch9lvl30" {
                
            } else if self.continueBtnString == "ch9lvl31" {
                
            } else if self.continueBtnString == "ch9lvl32" {
                
            } else if self.continueBtnString == "ch9lvl33" {
                
            } else if self.continueBtnString == "ch9lvl34" {
                
            } else if self.continueBtnString == "ch9lvl35" {
                
            } else if self.continueBtnString == "ch9lvl36" {
                
            } else if self.continueBtnString == "ch9lvl37" {
                
            } else if self.continueBtnString == "ch9lvl37" {
                
            } else if self.continueBtnString == "ch9lvl38" {
                
            } else if self.continueBtnString == "ch9lvl39" {
                
            } else if self.continueBtnString == "ch9lvl40" {
                
            } else if self.continueBtnString == "ch9lvl41" {
                
            } else if self.continueBtnString == "ch9lvl42" {
                
            } else if self.continueBtnString == "ch9lvl43" {
                
            } else if self.continueBtnString == "ch9lvl44" {
                
            } else if self.continueBtnString == "ch9lvl45" {
                
            } else if self.continueBtnString == "ch9lvl46" {
                
            } else if self.continueBtnString == "ch9lvl47" {
                
            } else if self.continueBtnString == "ch9lvl48" {
                
            } else if self.continueBtnString == "ch9lvl49" {
                
            } else if self.continueBtnString == "ch9lvl50" {
                
            } else if self.continueBtnString == "ch9lvl51" {
                
            } else if self.continueBtnString == "ch9lvl52" {
                
            } else if self.continueBtnString == "ch9lvl53" {
                
            } else if self.continueBtnString == "ch9lvl54" {
                
            } else if self.continueBtnString == "ch9lvl55" {
                
            } else if self.continueBtnString == "ch9lvl56" {
                
            } else if self.continueBtnString == "ch9lvl57" {
                
            } else if self.continueBtnString == "ch9lvl58" {
                
            } else if self.continueBtnString == "ch9lvl59" {
                
            } else if self.continueBtnString == "ch9lvl60" {
                
            } else if self.continueBtnString == "ch9lvl61" {
                
            } else if self.continueBtnString == "ch9lvl62" {
                
            } else if self.continueBtnString == "ch9lvl63" {
                
            } else if self.continueBtnString == "ch9lvl64" {
                
            } else if self.continueBtnString == "ch9lvl65" {
                
            } else if self.continueBtnString == "ch9lvl66" {
                
            } else if self.continueBtnString == "ch9lvl67" {
                
            } else if self.continueBtnString == "ch9lvl68" {
                
            } else if self.continueBtnString == "ch9lvl69" {
                
            } else if self.continueBtnString == "ch9lvl70" {
                
            } else if self.continueBtnString == "ch9lvl71" {
                
            } else if self.continueBtnString == "ch9lvl72" {
                
            } else if self.continueBtnString == "ch9lvl73" {
                
            } else if self.continueBtnString == "ch9lvl74" {
                
            } else if self.continueBtnString == "ch9lvl75" {
                
            } else if self.continueBtnString == "ch9lvl76" {
                
            } else if self.continueBtnString == "ch9lvl77" {
                
            } else if self.continueBtnString == "ch9lvl78" {
                
            } else if self.continueBtnString == "ch9lvl79" {
                
            } else if self.continueBtnString == "ch9lvl80" {
                
            } else if self.continueBtnString == "ch9lvl81" {
                
            } else if self.continueBtnString == "ch9lvl82" {
                
            } else if self.continueBtnString == "ch9lvl83" {
                
            } else if self.continueBtnString == "ch9lvl84" {
                
            } else if self.continueBtnString == "ch9lvl85" {
                
            } else if self.continueBtnString == "ch9lvl86" {
                
            } else if self.continueBtnString == "ch9lvl87" {
                
            } else if self.continueBtnString == "ch9lvl88" {
                
            } else if self.continueBtnString == "ch9lvl89" {
                
            } else if self.continueBtnString == "ch9lvl90" {
                
            } else if self.continueBtnString == "ch9lvl91" {
                
            } else if self.continueBtnString == "ch9lvl92" {
                
            } else if self.continueBtnString == "ch9lvl93" {
                
            } else if self.continueBtnString == "ch9lvl94" {
                
            } else if self.continueBtnString == "ch9lvl95" {
                
            } else if self.continueBtnString == "ch9lvl96" {
                
            } else if self.continueBtnString == "ch9lvl97" {
                
            } else if self.continueBtnString == "ch9lvl98" {
                
            } else if self.continueBtnString == "ch9lvl99" {
                
            } else if self.continueBtnString == "ch9lvl100" {
                
            } else if self.continueBtnString == "ch10lvl1" {
                
            } else if self.continueBtnString == "ch10lvl2" {
                
            } else if self.continueBtnString == "ch10lvl3" {
                
            } else if self.continueBtnString == "ch10lvl4" {
                
            } else if self.continueBtnString == "ch10lvl5" {
                
            } else if self.continueBtnString == "ch10lvl6" {
                
            } else if self.continueBtnString == "ch10lvl7" {
                
            } else if self.continueBtnString == "ch10lvl8" {
                
            } else if self.continueBtnString == "ch10lvl9" {
                
            } else if self.continueBtnString == "ch10lvl10" {
                
            } else if self.continueBtnString == "ch10lvl11" {
                
            } else if self.continueBtnString == "ch10lvl12" {
                
            } else if self.continueBtnString == "ch10lvl13" {
                
            } else if self.continueBtnString == "ch10lvl14" {
                
            } else if self.continueBtnString == "ch10lvl15" {
                
            } else if self.continueBtnString == "ch10lvl16" {
                
            } else if self.continueBtnString == "ch10lvl17" {
                
            } else if self.continueBtnString == "ch10lvl18" {
                
            } else if self.continueBtnString == "ch10lvl19" {
                
            } else if self.continueBtnString == "ch10lvl20" {
                
            } else if self.continueBtnString == "ch10lvl21" {
                
            } else if self.continueBtnString == "ch10lvl22" {
                
            } else if self.continueBtnString == "ch10lvl23" {
                
            } else if self.continueBtnString == "ch10lvl24" {
                
            } else if self.continueBtnString == "ch10lvl25" {
                
            } else if self.continueBtnString == "ch10lvl26" {
                
            } else if self.continueBtnString == "ch10lvl27" {
                
            } else if self.continueBtnString == "ch10lvl28" {
                
            } else if self.continueBtnString == "ch10lvl29" {
                
            } else if self.continueBtnString == "ch10lvl30" {
                
            } else if self.continueBtnString == "ch10lvl31" {
                
            } else if self.continueBtnString == "ch10lvl32" {
                
            } else if self.continueBtnString == "ch10lvl33" {
                
            } else if self.continueBtnString == "ch10lvl34" {
                
            } else if self.continueBtnString == "ch10lvl35" {
                
            } else if self.continueBtnString == "ch10lvl36" {
                
            } else if self.continueBtnString == "ch10lvl37" {
                
            } else if self.continueBtnString == "ch10lvl38" {
                
            } else if self.continueBtnString == "ch10lvl39" {
                
            } else if self.continueBtnString == "ch10lvl40" {
                
            } else if self.continueBtnString == "ch10lvl41" {
                
            } else if self.continueBtnString == "ch10lvl42" {
                
            } else if self.continueBtnString == "ch10lvl43" {
                
            } else if self.continueBtnString == "ch10lvl44" {
                
            } else if self.continueBtnString == "ch10lvl45" {
                
            } else if self.continueBtnString == "ch10lvl46" {
                
            } else if self.continueBtnString == "ch10lvl47" {
                
            } else if self.continueBtnString == "ch10lvl48" {
                
            } else if self.continueBtnString == "ch10lvl49" {
                
            } else if self.continueBtnString == "ch10lvl50" {
                
            } else if self.continueBtnString == "ch10lvl51" {
                
            } else if self.continueBtnString == "ch10lvl52" {
                
            } else if self.continueBtnString == "ch10lvl53" {
                
            } else if self.continueBtnString == "ch10lvl54" {
                
            } else if self.continueBtnString == "ch10lvl55" {
                
            } else if self.continueBtnString == "ch10lvl56" {
                
            } else if self.continueBtnString == "ch10lvl57" {
                
            } else if self.continueBtnString == "ch10lvl58" {
                
            } else if self.continueBtnString == "ch10lvl59" {
                
            } else if self.continueBtnString == "ch10lvl60" {
                
            } else if self.continueBtnString == "ch10lvl61" {
                
            } else if self.continueBtnString == "ch10lvl62" {
                
            } else if self.continueBtnString == "ch10lvl63" {
                
            } else if self.continueBtnString == "ch10lvl64" {
                
            } else if self.continueBtnString == "ch10lvl65" {
                
            } else if self.continueBtnString == "ch10lvl66" {
                
            } else if self.continueBtnString == "ch10lvl67" {
                
            } else if self.continueBtnString == "ch10lvl68" {
                
            } else if self.continueBtnString == "ch10lvl69" {
                
            } else if self.continueBtnString == "ch10lvl70" {
                
            } else if self.continueBtnString == "ch10lvl71" {
                
            } else if self.continueBtnString == "ch10lvl72" {
                
            } else if self.continueBtnString == "ch10lvl73" {
                
            } else if self.continueBtnString == "ch10lvl74" {
                
            } else if self.continueBtnString == "ch10lvl75" {
                
            } else if self.continueBtnString == "ch10lvl76" {
                
            } else if self.continueBtnString == "ch10lvl77" {
                
            } else if self.continueBtnString == "ch10lvl78" {
                
            } else if self.continueBtnString == "ch10lvl79" {
                
            } else if self.continueBtnString == "ch10lvl80" {
                
            } else if self.continueBtnString == "ch10lvl81" {
                
            } else if self.continueBtnString == "ch10lvl82" {
                
            } else if self.continueBtnString == "ch10lvl83" {
                
            } else if self.continueBtnString == "ch10lvl84" {
                
            } else if self.continueBtnString == "ch10lvl85" {
                
            } else if self.continueBtnString == "ch10lvl86" {
                
            } else if self.continueBtnString == "ch10lvl87" {
                
            } else if self.continueBtnString == "ch10lvl88" {
                
            } else if self.continueBtnString == "ch10lvl89" {
                
            } else if self.continueBtnString == "ch10lvl90" {
                
            } else if self.continueBtnString == "ch10lvl91" {
                
            } else if self.continueBtnString == "ch10lvl92" {
                
            } else if self.continueBtnString == "ch10lvl93" {
                
            } else if self.continueBtnString == "ch10lvl94" {
                
            } else if self.continueBtnString == "ch10lvl95" {
                
            } else if self.continueBtnString == "ch10lvl96" {
                
            } else if self.continueBtnString == "ch10lvl97" {
                
            } else if self.continueBtnString == "ch10lvl98" {
                
            } else if self.continueBtnString == "ch10lvl99" {
                
            } else if self.continueBtnString == "ch10lvl100" {
                
            }
            
            let transition = SKTransition.fade(withDuration: 0)
            scene.scaleMode = .aspectFill
            self.view?.presentScene(scene, transition: transition)
            
        })
        
    } // end of continue function
    
}
