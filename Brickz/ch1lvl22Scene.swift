//
//  ch1lvl22Scene.swift
//  Brickz
//
//  Created by Julian Cearley on 9/18/17.
//  Copyright © 2017 Julian Cearley. All rights reserved.
//

import UIKit
import SpriteKit

class ch1lvl22Scene: SKScene, SKPhysicsContactDelegate {
    
    let leftBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let rightBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let topBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    let bottomBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    
    let brick1 = SKSpriteNode()
    var brick1Life = 3
    let brick2 = SKSpriteNode()
    var brick2Life = 2
    let brick3 = SKSpriteNode()
    var brick3Life = 3
    let brick4 = SKSpriteNode()
    var brick4Life = 2
    let brick5 = SKSpriteNode()
    var brick5Life = 3
    let brick6 = SKSpriteNode()
    var brick6Life = 2
    
    let brick7 = SKSpriteNode()
    let brick8 = SKSpriteNode()
    let brick9 = SKSpriteNode()
    let brick10 = SKSpriteNode()
    let brick11 = SKSpriteNode()
    let brick12 = SKSpriteNode()
    
    let brick13 = SKSpriteNode()
    var brick13Life = 2
    let brick14 = SKSpriteNode()
    var brick14Life = 3
    let brick15 = SKSpriteNode()
    var brick15Life = 2
    let brick16 = SKSpriteNode()
    var brick16Life = 3
    let brick17 = SKSpriteNode()
    var brick17Life = 2
    let brick18 = SKSpriteNode()
    var brick18Life = 3
    
    let brickTextureHealth3 = SKTexture(imageNamed: "Brick2")
    let brickTextureHealth2 = SKTexture(imageNamed: "Brick3")
    let brickTextureHealth1 = SKTexture(imageNamed: "Brick4")
    
    let paddle = SKSpriteNode(imageNamed: "Paddle")
    var ballTexture = SKTexture(imageNamed: "Ball")
    let ball = SKSpriteNode()
    
    var gameStarted = false
    var gameOver = false
    
    var score = 0
    let scoreLbl = SKLabelNode(fontNamed: "ChalkDuster")
    
    var brickCount = 18
    
    var ch1lvl23Unlocked  = UserDefaults.standard.bool(forKey: "ch1lv23Unlocked")
    
    let retryBtn = SKSpriteNode()
    let retryUpTexture = SKTexture(imageNamed: "retryImgUp")
    let retryDownTexture = SKTexture(imageNamed: "retryImgDown")
    
    let menuBtn = SKSpriteNode()
    let menuUpTexture = SKTexture(imageNamed: "menuImgUp")
    let menuDownTexture = SKTexture(imageNamed: "menuImgDown")
    
    let nextBtn = SKSpriteNode()
    let nextUpTexture = SKTexture(imageNamed: "nextImgUp")
    let nextDownTexture = SKTexture(imageNamed: "nextImgDown")
    
    let fadeOut = SKAction.fadeOut(withDuration: 0.5)
    
    var time = 0.0
    let timeLbl = SKLabelNode(fontNamed: "ChalkDuster")
    var timeTimer = Timer()
    
    var continueBtnString = UserDefaults.standard.string(forKey: "continueBtnString")
    
     let lvlLbl = SKLabelNode(fontNamed: "ChalkDuster")
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.lightGray
        self.anchorPoint = CGPoint(x: 0, y: 0)
        self.physicsWorld.contactDelegate = self
        
        lvlLbl.text = "Level 22"
        lvlLbl.fontSize = self.frame.width / 8
        lvlLbl.fontColor = SKColor.white
        lvlLbl.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        lvlLbl.zPosition = 5
        self.addChild(lvlLbl)
        
        let brickSize = CGSize(width: (self.frame.width / 7) / 1.1, height: (self.frame.width / 12) / 1.1)
        
        leftBarrier.size = CGSize(width: self.frame.width / 25, height: self.frame.height)
        leftBarrier.position = CGPoint(x: 0, y: self.frame.height / 2)
        leftBarrier.name = "leftBarrier"
        leftBarrier.zPosition = 0
        self.addChild(leftBarrier)
        leftBarrier.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: leftBarrier.size.width, height: leftBarrier.size.height))
        leftBarrier.physicsBody?.isDynamic = false
        leftBarrier.physicsBody?.affectedByGravity = false
        leftBarrier.physicsBody?.friction = 0
        leftBarrier.physicsBody?.restitution = 1
        leftBarrier.physicsBody?.categoryBitMask = PhysicsCategory.Barrier
        leftBarrier.physicsBody?.collisionBitMask = PhysicsCategory.Paddle
        leftBarrier.physicsBody?.contactTestBitMask = PhysicsCategory.Paddle
        
        rightBarrier.size = CGSize(width: self.frame.width / 25, height: self.frame.height)
        rightBarrier.position = CGPoint(x: self.frame.width, y: self.frame.height / 2)
        rightBarrier.name = "rightBarrier"
        rightBarrier.zPosition = 0
        self.addChild(rightBarrier)
        rightBarrier.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: rightBarrier.size.width, height: rightBarrier.size.height))
        rightBarrier.physicsBody?.isDynamic = false
        rightBarrier.physicsBody?.affectedByGravity = false
        rightBarrier.physicsBody?.friction = 0
        rightBarrier.physicsBody?.restitution = 1
        rightBarrier.physicsBody?.categoryBitMask = PhysicsCategory.Barrier
        rightBarrier.physicsBody?.collisionBitMask = PhysicsCategory.Paddle
        rightBarrier.physicsBody?.contactTestBitMask = PhysicsCategory.Paddle
        
        topBarrier.size = CGSize(width: self.frame.width, height: self.frame.width / 25)
        topBarrier.position = CGPoint(x: self.frame.width / 2, y: self.frame.height)
        topBarrier.name = "topBarrier"
        topBarrier.zPosition = 0
        self.addChild(topBarrier)
        topBarrier.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: topBarrier.size.width, height: topBarrier.size.height))
        topBarrier.physicsBody?.isDynamic = false
        topBarrier.physicsBody?.affectedByGravity = false
        topBarrier.physicsBody?.friction = 0
        topBarrier.physicsBody?.restitution = 1
        topBarrier.physicsBody?.categoryBitMask = PhysicsCategory.Barrier
        topBarrier.physicsBody?.collisionBitMask = PhysicsCategory.Paddle
        topBarrier.physicsBody?.contactTestBitMask = PhysicsCategory.Paddle
        
        bottomBarrier.size = CGSize(width: self.frame.width, height: self.frame.width / 25)
        bottomBarrier.position = CGPoint(x: self.frame.width / 2, y: 0)
        bottomBarrier.name = "bottomBarrier"
        bottomBarrier.zPosition = 0
        self.addChild(bottomBarrier)
        bottomBarrier.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: bottomBarrier.size.width, height: bottomBarrier.size.height))
        bottomBarrier.physicsBody?.isDynamic = false
        bottomBarrier.physicsBody?.affectedByGravity = false
        bottomBarrier.physicsBody?.friction = 0
        bottomBarrier.physicsBody?.restitution = 1
        bottomBarrier.physicsBody?.categoryBitMask = PhysicsCategory.Barrier
        bottomBarrier.physicsBody?.collisionBitMask = PhysicsCategory.Paddle
        bottomBarrier.physicsBody?.contactTestBitMask = PhysicsCategory.Paddle
        
        brick1.texture = brickTextureHealth3
        brick1.size = brickSize
        brick1.position = CGPoint(x: 0 + self.frame.width / 7.5, y: self.frame.height / 2.5)
        brick1.name = "brick1"
        self.addChild(brick1)
        brick1.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick1.physicsBody?.isDynamic = false
        brick1.physicsBody?.affectedByGravity = false
        brick1.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick1.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick1.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick2.texture = brickTextureHealth2
        brick2.size = brickSize
        brick2.position = CGPoint(x: brick1.position.x + (brick2.size.width * 1.1), y: self.frame.height / 2.5)
        brick2.name = "brick2"
        self.addChild(brick2)
        brick2.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick2.physicsBody?.isDynamic = false
        brick2.physicsBody?.affectedByGravity = false
        brick2.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick2.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick2.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick3.texture = brickTextureHealth3
        brick3.size = brickSize
        brick3.position = CGPoint(x: brick2.position.x + (brickSize.width * 1.1), y: self.frame.height / 2.5)
        brick3.name = "brick3"
        self.addChild(brick3)
        brick3.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick3.physicsBody?.isDynamic = false
        brick3.physicsBody?.affectedByGravity = false
        brick3.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick3.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick3.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick4.texture = brickTextureHealth2
        brick4.size = brickSize
        brick4.position = CGPoint(x: brick3.position.x + (brickSize.width * 1.1), y: self.frame.height / 2.5)
        brick4.name = "brick4"
        self.addChild(brick4)
        brick4.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick4.physicsBody?.isDynamic = false
        brick4.physicsBody?.affectedByGravity = false
        brick4.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick4.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick4.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick5.texture = brickTextureHealth3
        brick5.size = brickSize
        brick5.position = CGPoint(x: brick4.position.x + (brickSize.width * 1.1), y: self.frame.height / 2.5)
        brick5.name = "brick5"
        self.addChild(brick5)
        brick5.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick5.physicsBody?.isDynamic = false
        brick5.physicsBody?.affectedByGravity = false
        brick5.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick5.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick5.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick6.texture = brickTextureHealth2
        brick6.size = brickSize
        brick6.position = CGPoint(x: brick5.position.x + (brickSize.width * 1.1), y: self.frame.height / 2.5)
        brick6.name = "brick6"
        self.addChild(brick6)
        brick6.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick6.physicsBody?.isDynamic = false
        brick6.physicsBody?.affectedByGravity = false
        brick6.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick6.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick6.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick7.texture = brickTextureHealth1
        brick7.size = brickSize
        brick7.position = CGPoint(x: brick1.position.x, y: self.frame.height / 1.8)
        brick7.name = "brick7"
        self.addChild(brick7)
        brick7.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick7.physicsBody?.isDynamic = false
        brick7.physicsBody?.affectedByGravity = false
        brick7.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick7.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick7.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick8.texture = brickTextureHealth1
        brick8.size = brickSize
        brick8.position = CGPoint(x: brick2.position.x, y: self.frame.height / 1.8)
        brick8.name = "brick8"
        self.addChild(brick8)
        brick8.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick8.physicsBody?.isDynamic = false
        brick8.physicsBody?.affectedByGravity = false
        brick8.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick8.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick8.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick9.texture = brickTextureHealth1
        brick9.size = brickSize
        brick9.position = CGPoint(x: brick3.position.x, y: self.frame.height / 1.8)
        brick9.name = "brick9"
        self.addChild(brick9)
        brick9.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick9.physicsBody?.isDynamic = false
        brick9.physicsBody?.affectedByGravity = false
        brick9.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick9.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick9.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick10.texture = brickTextureHealth1
        brick10.size = brickSize
        brick10.position = CGPoint(x: brick4.position.x, y: self.frame.height / 1.8)
        brick10.name = "brick10"
        self.addChild(brick10)
        brick10.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick10.physicsBody?.isDynamic = false
        brick10.physicsBody?.affectedByGravity = false
        brick10.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick10.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick10.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick11.texture = brickTextureHealth1
        brick11.size = brickSize
        brick11.position = CGPoint(x: brick5.position.x, y: self.frame.height / 1.8)
        brick11.name = "brick11"
        self.addChild(brick11)
        brick11.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick11.physicsBody?.isDynamic = false
        brick11.physicsBody?.affectedByGravity = false
        brick11.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick11.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick11.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick12.texture = brickTextureHealth1
        brick12.size = brickSize
        brick12.position = CGPoint(x: brick6.position.x, y: self.frame.height / 1.8)
        brick12.name = "brick12"
        self.addChild(brick12)
        brick12.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick12.physicsBody?.isDynamic = false
        brick12.physicsBody?.affectedByGravity = false
        brick12.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick12.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick12.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick13.texture = brickTextureHealth2
        brick13.size = brickSize
        brick13.position = CGPoint(x: brick1.position.x, y: self.frame.height / 1.4)
        brick13.name = "brick13"
        self.addChild(brick13)
        brick13.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick13.physicsBody?.isDynamic = false
        brick13.physicsBody?.affectedByGravity = false
        brick13.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick13.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick13.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick14.texture = brickTextureHealth3
        brick14.size = brickSize
        brick14.position = CGPoint(x: brick2.position.x, y: self.frame.height / 1.4)
        brick14.name = "brick14"
        self.addChild(brick14)
        brick14.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick14.physicsBody?.isDynamic = false
        brick14.physicsBody?.affectedByGravity = false
        brick14.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick14.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick14.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick15.texture = brickTextureHealth2
        brick15.size = brickSize
        brick15.position = CGPoint(x: brick3.position.x, y: self.frame.height / 1.4)
        brick15.name = "brick15"
        self.addChild(brick15)
        brick15.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick15.physicsBody?.isDynamic = false
        brick15.physicsBody?.affectedByGravity = false
        brick15.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick15.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick15.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick16.texture = brickTextureHealth3
        brick16.size = brickSize
        brick16.position = CGPoint(x: brick4.position.x, y: self.frame.height / 1.4)
        brick16.name = "brick16"
        self.addChild(brick16)
        brick16.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick16.physicsBody?.isDynamic = false
        brick16.physicsBody?.affectedByGravity = false
        brick16.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick16.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick16.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick17.texture = brickTextureHealth2
        brick17.size = brickSize
        brick17.position = CGPoint(x: brick5.position.x, y: self.frame.height / 1.4)
        brick17.name = "brick17"
        self.addChild(brick17)
        brick17.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick17.physicsBody?.isDynamic = false
        brick17.physicsBody?.affectedByGravity = false
        brick17.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick17.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick17.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick18.texture = brickTextureHealth3
        brick18.size = brickSize
        brick18.position = CGPoint(x: brick6.position.x, y: self.frame.height / 1.4)
        brick18.name = "brick18"
        self.addChild(brick18)
        brick18.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick18.physicsBody?.isDynamic = false
        brick18.physicsBody?.affectedByGravity = false
        brick18.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick18.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick18.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        paddle.size = CGSize(width: self.frame.width / 4.5, height: self.frame.height / 22)
        paddle.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 10)
        paddle.name = "paddle"
        paddle.zPosition = 1
        self.addChild(paddle)
        paddle.physicsBody = SKPhysicsBody(rectangleOf: paddle.size)
        paddle.physicsBody?.affectedByGravity = false
        paddle.physicsBody?.isDynamic = false
        paddle.physicsBody?.friction = 0
        paddle.physicsBody?.restitution = 0
        paddle.physicsBody?.categoryBitMask = PhysicsCategory.Paddle
        paddle.physicsBody?.collisionBitMask = PhysicsCategory.Ball | PhysicsCategory.Barrier
        paddle.physicsBody?.contactTestBitMask = PhysicsCategory.Ball | PhysicsCategory.Barrier
        
        ball.texture = ballTexture
        ball.size = CGSize(width: self.frame.width / 15, height: self.frame.width / 15)
        ball.position = CGPoint(x: self.frame.width / 2, y: paddle.position.y + (paddle.size.height / 1.1))
        ball.name = "ball"
        self.addChild(ball)
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width / 2)
        ball.physicsBody?.isDynamic = true
        ball.physicsBody?.affectedByGravity = false
        ball.physicsBody?.friction = 0
        ball.physicsBody?.restitution = 1
        ball.physicsBody?.categoryBitMask = PhysicsCategory.Ball
        ball.physicsBody?.collisionBitMask = PhysicsCategory.Paddle | PhysicsCategory.Ball | PhysicsCategory.Barrier | PhysicsCategory.Brick
        ball.physicsBody?.contactTestBitMask = PhysicsCategory.Paddle | PhysicsCategory.Ball | PhysicsCategory.Barrier | PhysicsCategory.Brick
        ball.physicsBody?.linearDamping = 0
        ball.physicsBody?.angularDamping = 0
        ball.physicsBody?.allowsRotation = true
        
        timeLbl.text = "\(time)"
        timeLbl.fontSize = self.frame.width / 15
        timeLbl.fontColor = SKColor.white
        timeLbl.position = CGPoint(x: 0 + (self.frame.width / 20), y: self.frame.height - (self.frame.width / 13))
        timeLbl.horizontalAlignmentMode = .left
        self.addChild(timeLbl)
        
        menuBtn.texture = menuUpTexture
        menuBtn.size = CGSize(width: self.frame.width / 2.5, height: self.frame.height / 10)
        menuBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        menuBtn.name = "menuBtn"
        menuBtn.alpha = 0
        menuBtn.zPosition = 2
        self.addChild(menuBtn)
        
        retryBtn.texture = retryUpTexture
        retryBtn.size = CGSize(width: self.frame.width / 2.5, height: self.frame.height / 10)
        retryBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.46)
        retryBtn.alpha = 0
        retryBtn.name = "retryBtn"
        retryBtn.zPosition = 2
        self.addChild(retryBtn)
        
        nextBtn.texture = nextUpTexture
        nextBtn.size = CGSize(width: self.frame.width / 2.5, height: self.frame.height / 10)
        nextBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 3.1)
        nextBtn.alpha = 0
        nextBtn.name = "nextBtn"
        nextBtn.zPosition = 2
        self.addChild(nextBtn)
        
        scoreLbl.text = "\(score)"
        scoreLbl.fontSize = self.frame.width / 8
        scoreLbl.fontColor = SKColor.white
        scoreLbl.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.2)
        self.addChild(scoreLbl)
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        if(contact.bodyA.node != nil && contact.bodyB.node != nil) {
            let firstBody = contact.bodyA.node as! SKSpriteNode
            let secondBody = contact.bodyB.node as! SKSpriteNode
            
            if (firstBody.name == "ball") && (secondBody.name == "brick1") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick1") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick2") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick2") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick3") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick3") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick4") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick4") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick5") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick5") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick6") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick6") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick7") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick7") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick8") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick8") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick9") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick9") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick10") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick10") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick11") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick11") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick12") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick12") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick13") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick13") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick14") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick14") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick15") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick15") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick16") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick16") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick17") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick17") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick18") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick18") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "bottomBarrier") {
                ballHitBottomBarrier(Ball: firstBody, Barrier: secondBody)
            } else if (firstBody.name == "bottomBarrier") && (secondBody.name == "ball") {
                ballHitBottomBarrier(Ball: secondBody, Barrier: firstBody)
            }
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        for touch in touches {
            let location = touch.location(in: self)
            
            if gameStarted == true  && gameOver == false {
                
                paddle.run(SKAction.moveTo(x: location.x, duration: 0.05))
                
                
            } else if gameStarted == false {
                gameStarted = true
                
                timeTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.keepTime), userInfo: nil, repeats: true)
                
                // launch the ball
                var dx = CGFloat(location.x - self.frame.width / 2)
                var dy = CGFloat(location.y - paddle.position.y + (paddle.size.height / 1.1))
                
                let magnitude = sqrt(dx * dx + dy * dy)
                
                dx /= magnitude
                dy /= magnitude
                
                let vector = CGVector(dx: 55 * dx, dy: 55 * dy)
                ball.physicsBody?.applyImpulse(vector)
                
                lvlLbl.run(SKAction.moveTo(y: self.frame.height / 1.05, duration: 1.5))
                lvlLbl.run(SKAction.scale(by: 0.5, duration: 1.5))
            }
        }
        
        if touchedNode.name == "retryBtn" {
            retryBtn.texture = retryDownTexture
        }
        if touchedNode.name == "menuBtn" {
            menuBtn.texture = menuDownTexture
        }
        if touchedNode.name == "nextBtn" {
            nextBtn.texture = nextDownTexture
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if touchedNode.name == "retryBtn" {
            retryBtn.texture = retryUpTexture
            timeLbl.run(fadeOut)
            scoreLbl.run(fadeOut)
            paddle.run(fadeOut)
            retryBtn.run(fadeOut)
            nextBtn.run(fadeOut)
            brick1.run(fadeOut)
            brick2.run(fadeOut)
            brick3.run(fadeOut)
            brick4.run(fadeOut)
            brick5.run(fadeOut)
            brick6.run(fadeOut)
            brick7.run(fadeOut)
            brick8.run(fadeOut)
            brick9.run(fadeOut)
            brick10.run(fadeOut)
            brick11.run(fadeOut)
            brick12.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl22Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
            
        }
        if touchedNode.name == "menuBtn" {
            menuBtn.texture = menuUpTexture
            retryBtn.texture = retryUpTexture
            timeLbl.run(fadeOut)
            scoreLbl.run(fadeOut)
            paddle.run(fadeOut)
            retryBtn.run(fadeOut)
            nextBtn.run(fadeOut)
            brick1.run(fadeOut)
            brick2.run(fadeOut)
            brick3.run(fadeOut)
            brick4.run(fadeOut)
            brick5.run(fadeOut)
            brick6.run(fadeOut)
            brick7.run(fadeOut)
            brick8.run(fadeOut)
            brick9.run(fadeOut)
            brick10.run(fadeOut)
            brick11.run(fadeOut)
            brick12.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = TitleScene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        if touchedNode.name == "nextBtn" {
            nextBtn.texture = nextUpTexture
            retryBtn.texture = retryUpTexture
            timeLbl.run(fadeOut)
            scoreLbl.run(fadeOut)
            paddle.run(fadeOut)
            retryBtn.run(fadeOut)
            nextBtn.run(fadeOut)
            brick1.run(fadeOut)
            brick2.run(fadeOut)
            brick3.run(fadeOut)
            brick4.run(fadeOut)
            brick5.run(fadeOut)
            brick6.run(fadeOut)
            brick7.run(fadeOut)
            brick8.run(fadeOut)
            brick9.run(fadeOut)
            brick10.run(fadeOut)
            brick11.run(fadeOut)
            brick12.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl23Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if gameStarted == true && gameOver == false {
            for touch in touches {
                let location = touch.location(in: self)
                
                paddle.run(SKAction.moveTo(x: location.x, duration: 0.05))
                
            }
        } else {
            // gameStarted == false
        }
        
        if touchedNode.name != "retryBtn" {
            retryBtn.texture = retryUpTexture
        }
        if touchedNode.name != "menuBtn" {
            menuBtn.texture = menuUpTexture
        }
        if touchedNode.name != "nextBtn" {
            nextBtn.texture = nextUpTexture
        }
    }
    
    func ballHitBrick(Ball: SKSpriteNode, Brick: SKSpriteNode) {
        let explosionWait = SKAction.wait(forDuration: 0.3)
        let brickExplosion = SKEmitterNode()
        let brickParticleTexture = SKTexture(imageNamed: "brickExplosionParticle")
        
        brickExplosion.particleTexture = brickParticleTexture
        brickExplosion.particleSize = CGSize(width: self.frame.width / 20, height: self.frame.height / 26)
        brickExplosion.particleBirthRate = 100
        brickExplosion.particleAlpha = 1
        brickExplosion.particleLifetime = 0.5
        brickExplosion.particleAlpha = 1
        brickExplosion.emissionAngle = 360
        brickExplosion.emissionAngleRange = 25
        brickExplosion.particleSpeed = 100
        brickExplosion.particleSpeedRange = 50
        brickExplosion.alpha = 1
        brickExplosion.particleScale = 0.5
        brickExplosion.zPosition = 3
        brickExplosion.particleLifetimeRange = 0
        brickExplosion.particlePositionRange = CGVector(dx: 0, dy: 0)
        brickExplosion.zPosition = 5
        
        let ballExplosion = SKEmitterNode()
        let ballParticleTexture = SKTexture(imageNamed: "Ball")
        
        ballExplosion.particleTexture = ballParticleTexture
        ballExplosion.particleSize = CGSize(width: self.frame.width / 20, height: self.frame.height / 26)
        ballExplosion.particleBirthRate = 100
        ballExplosion.particleAlpha = 1
        ballExplosion.particleLifetime = 0.5
        ballExplosion.particleAlpha = 1
        ballExplosion.emissionAngle = 360
        ballExplosion.emissionAngleRange = 25
        ballExplosion.particleSpeed = 100
        ballExplosion.particleSpeedRange = 50
        ballExplosion.alpha = 1
        ballExplosion.particleScale = 0.5
        ballExplosion.zPosition = 3
        ballExplosion.particleLifetimeRange = 0
        ballExplosion.particlePositionRange = CGVector(dx: 0, dy: 0)
        ballExplosion.zPosition = 5
        ballExplosion.position = self.ball.position
        
        score += 10
        scoreLbl.text = "\(score)"
        
        if Brick.name == "brick1" {
            if brick1Life == 3 {
                brick1Life -= 1
                brick1.texture = brickTextureHealth2
            } else if brick1Life == 2 {
                brick1Life -= 1
                brick1.texture = brickTextureHealth1
            } else if brick1Life == 1 {
                brickCount -= 1
                brick1.removeFromParent()
                brickExplosion.position = brick1.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick2" {
            if brick2Life == 2 {
                brick2Life -= 1
                brick2.texture = brickTextureHealth1
            } else if brick2Life == 1 {
                brickCount -= 1
                brick2.removeFromParent()
                brickExplosion.position = brick2.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick3" {
            if brick3Life == 3 {
                brick3Life -= 1
                brick3.texture = brickTextureHealth2
            } else if brick3Life == 2 {
                brick3Life -= 1
                brick3.texture = brickTextureHealth1
            } else if brick3Life == 1 {
                brickCount -= 1
                brick3.removeFromParent()
                brickExplosion.position = brick3.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick4" {
            if brick4Life == 2 {
                brick4Life -= 1
                brick4.texture = brickTextureHealth1
                
            } else if brick4Life == 1 {
                brickCount -= 1
                brick4.removeFromParent()
                brickExplosion.position = brick4.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick5" {
            if brick5Life == 3 {
                brick5Life -= 1
                brick5.texture = brickTextureHealth2
            } else if brick5Life == 2 {
                brick5Life -= 1
                brick5.texture = brickTextureHealth1
            } else if brick5Life == 1 {
                brickCount -= 1
                brick5.removeFromParent()
                brickExplosion.position = brick5.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
                
            }
        }
        if Brick.name == "brick6" {
            if brick6Life == 2 {
                brick6Life -= 1
                brick6.texture = brickTextureHealth1
            } else if brick6Life == 1 {
                brickCount -= 1
                brick6.removeFromParent()
                brickExplosion.position = brick6.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick7" {
            brickCount -= 1
            brick7.removeFromParent()
            brickExplosion.position = brick7.position
            self.addChild(brickExplosion)
            self.run(explosionWait, completion: {
                brickExplosion.removeFromParent()
            })
            
            if brickCount == 0 {
                self.addChild(ballExplosion)
                ball.removeFromParent()
                self.run(explosionWait, completion: {
                    ballExplosion.removeFromParent()
                })
                timeTimer.invalidate()
                gameOver = true
                if ch1lvl23Unlocked == false {
                    ch1lvl23Unlocked = true
                    UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                    UserDefaults.standard.synchronize()
                    continueBtnString = "ch1lvl23"
                    UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                    UserDefaults.standard.synchronize()
                }
                UIView.animate(withDuration: 0.5, animations: {
                    self.nextBtn.alpha = 1
                    self.menuBtn.alpha = 1
                    self.retryBtn.alpha = 1
                })
            }
        }
        if Brick.name == "brick8" {
            brickCount -= 1
            brick8.removeFromParent()
            brickExplosion.position = brick8.position
            self.addChild(brickExplosion)
            self.run(explosionWait, completion: {
                brickExplosion.removeFromParent()
            })
            
            if brickCount == 0 {
                self.addChild(ballExplosion)
                ball.removeFromParent()
                self.run(explosionWait, completion: {
                    ballExplosion.removeFromParent()
                })
                timeTimer.invalidate()
                gameOver = true
                if ch1lvl23Unlocked == false {
                    ch1lvl23Unlocked = true
                    UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                    UserDefaults.standard.synchronize()
                    continueBtnString = "ch1lvl23"
                    UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                    UserDefaults.standard.synchronize()
                }
                UIView.animate(withDuration: 0.5, animations: {
                    self.nextBtn.alpha = 1
                    self.menuBtn.alpha = 1
                    self.retryBtn.alpha = 1
                })
            }
        }
        if Brick.name == "brick9" {
            brickCount -= 1
            brick9.removeFromParent()
            brickExplosion.position = brick9.position
            self.addChild(brickExplosion)
            self.run(explosionWait, completion: {
                brickExplosion.removeFromParent()
            })
            
            if brickCount == 0 {
                self.addChild(ballExplosion)
                ball.removeFromParent()
                self.run(explosionWait, completion: {
                    ballExplosion.removeFromParent()
                })
                timeTimer.invalidate()
                gameOver = true
                if ch1lvl23Unlocked == false {
                    ch1lvl23Unlocked = true
                    UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                    UserDefaults.standard.synchronize()
                    continueBtnString = "ch1lvl23"
                    UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                    UserDefaults.standard.synchronize()
                }
                UIView.animate(withDuration: 0.5, animations: {
                    self.nextBtn.alpha = 1
                    self.menuBtn.alpha = 1
                    self.retryBtn.alpha = 1
                })
            }
        }
        if Brick.name == "brick10" {
            brickCount -= 1
            brick10.removeFromParent()
            brickExplosion.position = brick10.position
            self.addChild(brickExplosion)
            self.run(explosionWait, completion: {
                brickExplosion.removeFromParent()
            })
            
            if brickCount == 0 {
                self.addChild(ballExplosion)
                ball.removeFromParent()
                self.run(explosionWait, completion: {
                    ballExplosion.removeFromParent()
                })
                timeTimer.invalidate()
                gameOver = true
                if ch1lvl23Unlocked == false {
                    ch1lvl23Unlocked = true
                    UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                    UserDefaults.standard.synchronize()
                    continueBtnString = "ch1lvl23"
                    UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                    UserDefaults.standard.synchronize()
                }
                UIView.animate(withDuration: 0.5, animations: {
                    self.nextBtn.alpha = 1
                    self.menuBtn.alpha = 1
                    self.retryBtn.alpha = 1
                })
            }
        }
        if Brick.name == "brick11" {
            brickCount -= 1
            brick11.removeFromParent()
            brickExplosion.position = brick11.position
            self.addChild(brickExplosion)
            self.run(explosionWait, completion: {
                brickExplosion.removeFromParent()
            })
            
            if brickCount == 0 {
                self.addChild(ballExplosion)
                ball.removeFromParent()
                self.run(explosionWait, completion: {
                    ballExplosion.removeFromParent()
                })
                timeTimer.invalidate()
                gameOver = true
                if ch1lvl23Unlocked == false {
                    ch1lvl23Unlocked = true
                    UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                    UserDefaults.standard.synchronize()
                    continueBtnString = "ch1lvl23"
                    UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                    UserDefaults.standard.synchronize()
                }
                UIView.animate(withDuration: 0.5, animations: {
                    self.nextBtn.alpha = 1
                    self.menuBtn.alpha = 1
                    self.retryBtn.alpha = 1
                })
            }
        }
        if Brick.name == "brick12" {
            brickCount -= 1
            brick12.removeFromParent()
            brickExplosion.position = brick12.position
            self.addChild(brickExplosion)
            self.run(explosionWait, completion: {
                brickExplosion.removeFromParent()
            })
            
            if brickCount == 0 {
                self.addChild(ballExplosion)
                ball.removeFromParent()
                self.run(explosionWait, completion: {
                    ballExplosion.removeFromParent()
                })
                timeTimer.invalidate()
                gameOver = true
                if ch1lvl23Unlocked == false {
                    ch1lvl23Unlocked = true
                    UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                    UserDefaults.standard.synchronize()
                    continueBtnString = "ch1lvl23"
                    UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                    UserDefaults.standard.synchronize()
                }
                UIView.animate(withDuration: 0.5, animations: {
                    self.nextBtn.alpha = 1
                    self.menuBtn.alpha = 1
                    self.retryBtn.alpha = 1
                })
            }
        }
        if Brick.name == "brick13" {
            if brick13Life == 2 {
                brick13Life -= 1
                brick13.texture = brickTextureHealth1
            } else if brick13Life == 1 {
                brickCount -= 1
                brick13.removeFromParent()
                brickExplosion.position = brick13.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick14" {
            if brick14Life == 3 {
                brick14Life -= 1
                brick14.texture = brickTextureHealth2
            } else if brick14Life == 2 {
                brick14Life -= 1
                brick14.texture = brickTextureHealth1
            } else if brick14Life == 1 {
                brickCount -= 1
                brick14.removeFromParent()
                brickExplosion.position = brick14.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick15" {
            if brick15Life == 2 {
                brick15Life -= 1
                brick15.texture = brickTextureHealth1
            } else if brick15Life == 1 {
                brickCount -= 1
                brick15.removeFromParent()
                brickExplosion.position = brick15.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick16" {
            if brick16Life == 3 {
                brick16Life -= 1
                brick16.texture = brickTextureHealth2
            } else if brick16Life == 2 {
                brick16Life -= 1
                brick16.texture = brickTextureHealth1
            } else if brick16Life == 1 {
                brickCount -= 1
                brick16.removeFromParent()
                brickExplosion.position = brick16.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick17" {
            if brick17Life == 2 {
                brick17Life -= 1
                brick17.texture = brickTextureHealth1
            } else if brick17Life == 1 {
                brickCount -= 1
                brick17.removeFromParent()
                brickExplosion.position = brick17.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        if Brick.name == "brick18" {
            if brick18Life == 3 {
                brick18Life -= 1
                brick18.texture = brickTextureHealth2
            } else if brick18Life == 2 {
                brick18Life -= 1
                brick18.texture = brickTextureHealth1
            } else if brick18Life == 1 {
                brickCount -= 1
                brick18.removeFromParent()
                brickExplosion.position = brick18.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
                
                if brickCount == 0 {
                    self.addChild(ballExplosion)
                    ball.removeFromParent()
                    self.run(explosionWait, completion: {
                        ballExplosion.removeFromParent()
                    })
                    timeTimer.invalidate()
                    gameOver = true
                    if ch1lvl23Unlocked == false {
                        ch1lvl23Unlocked = true
                        UserDefaults.standard.set(true, forKey: "ch1lvl23Unlocked")
                        UserDefaults.standard.synchronize()
                        continueBtnString = "ch1lvl23"
                        UserDefaults.standard.set("ch1lvl23", forKey: "continueBtnString")
                        UserDefaults.standard.synchronize()
                    }
                    
                    UIView.animate(withDuration: 0.5, animations: {
                        self.nextBtn.alpha = 1
                        self.menuBtn.alpha = 1
                        self.retryBtn.alpha = 1
                    })
                }
            }
        }
        
    }
    
    func ballHitBottomBarrier(Ball: SKSpriteNode, Barrier: SKSpriteNode) {
        gameOver = true
        timeTimer.invalidate()
        
        let explosionWait = SKAction.wait(forDuration: 0.3)
        let ballExplosion = SKEmitterNode()
        let ballParticleTexture = SKTexture(imageNamed: "Ball")
        
        ballExplosion.particleTexture = ballParticleTexture
        ballExplosion.particleSize = CGSize(width: self.frame.width / 20, height: self.frame.height / 26)
        ballExplosion.particleBirthRate = 100
        ballExplosion.particleAlpha = 1
        ballExplosion.particleLifetime = 0.5
        ballExplosion.particleAlpha = 1
        ballExplosion.emissionAngle = 360
        ballExplosion.emissionAngleRange = 25
        ballExplosion.particleSpeed = 100
        ballExplosion.particleSpeedRange = 50
        ballExplosion.alpha = 1
        ballExplosion.particleScale = 0.5
        ballExplosion.zPosition = 3
        ballExplosion.particleLifetimeRange = 0
        ballExplosion.particlePositionRange = CGVector(dx: 0, dy: 0)
        ballExplosion.zPosition = 5
        ballExplosion.position = self.ball.position
        self.addChild(ballExplosion)
        ball.removeFromParent()
        self.run(explosionWait, completion: {
            ballExplosion.removeFromParent()
        })
        
        retryBtn.position.y = self.frame.height / 2 - self.frame.height / 10
        menuBtn.position.y = self.frame.height / 2 + self.frame.height / 10
        
        UIView.animate(withDuration: 0.5, animations: {
            self.menuBtn.alpha = 1
            self.retryBtn.alpha = 1
        })
    }
    
    @objc func keepTime() {
        time += 0.1
        timeLbl.text = "\(time)"
    }
}
