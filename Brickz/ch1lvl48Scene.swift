//
//  ch1lvl48Scene.swift
//  Brickz
//
//  Created by Julian Cearley on 9/18/17.
//  Copyright © 2017 Julian Cearley. All rights reserved.
//

import UIKit
import SpriteKit

class ch1lvl48Scene: SKScene, SKPhysicsContactDelegate {
    
    let leftBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let rightBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let topBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    let bottomBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    
    let brick1 = SKSpriteNode()
    let brick2 = SKSpriteNode()
    let brick3 = SKSpriteNode()
    let brick4 = SKSpriteNode()
    let brick5 = SKSpriteNode()
    let brick6 = SKSpriteNode()
    let brick7 = SKSpriteNode()
    let brick8 = SKSpriteNode()
    let brick9 = SKSpriteNode()
    let brick10 = SKSpriteNode()
    let brick11 = SKSpriteNode()
    let brick12 = SKSpriteNode()
    let brick13 = SKSpriteNode()
    let brick14 = SKSpriteNode()
    let brick15 = SKSpriteNode()
    let brick16 = SKSpriteNode()
    let brick17 = SKSpriteNode()
    let brick18 = SKSpriteNode()
    let brick19 = SKSpriteNode()
    let brick20 = SKSpriteNode()
    let brick21 = SKSpriteNode()
    let brick22 = SKSpriteNode()
    let brick23 = SKSpriteNode()
    let brick24 = SKSpriteNode()
    let brick25 = SKSpriteNode()
    let brick26 = SKSpriteNode()
    let brick27 = SKSpriteNode()
    let brick28 = SKSpriteNode()
    let brick29 = SKSpriteNode()
    let brick30 = SKSpriteNode()
    let brick31 = SKSpriteNode()
    let brick32 = SKSpriteNode()
    
    var brickLives: Array = [10,10,10,10,10,10,10,4,4,4,4,4,4,4,4,4,4,4,4,4,4,20,20,20,20,20,20,20,20,20,20,20]
    
    let brickTextureHealth4 = SKTexture(imageNamed: "Brick1")
    let brickTextureHealth3 = SKTexture(imageNamed: "Brick2")
    let brickTextureHealth2 = SKTexture(imageNamed: "Brick3")
    let brickTextureHealth1 = SKTexture(imageNamed: "Brick4")
    
    let sbTextureH10 = SKTexture(imageNamed: "SB1")
    let sbTextureH9 = SKTexture(imageNamed: "SB2")
    let sbTextureH8 = SKTexture(imageNamed: "SB3")
    let sbTextureH7 = SKTexture(imageNamed: "SB4")
    let sbTextureH6 = SKTexture(imageNamed: "SB5")
    let sbTextureH5 = SKTexture(imageNamed: "SB6")
    let sbTextureH4 = SKTexture(imageNamed: "SB7")
    let sbTextureH3 = SKTexture(imageNamed: "SB8")
    let sbTextureH2 = SKTexture(imageNamed: "SB9")
    let sbTextureH1 = SKTexture(imageNamed: "SB10")
    
    let ubTextureH20 = SKTexture(imageNamed: "UBHealth20")
    let ubTextureH19 = SKTexture(imageNamed: "UBHealth19")
    let ubTextureH18 = SKTexture(imageNamed: "UBHealth18")
    let ubTextureH17 = SKTexture(imageNamed: "UBHealth17")
    let ubTextureH16 = SKTexture(imageNamed: "UBHealth16")
    let ubTextureH15 = SKTexture(imageNamed: "UBHealth15")
    let ubTextureH14 = SKTexture(imageNamed: "UBHealth14")
    let ubTextureH13 = SKTexture(imageNamed: "UBHealth13")
    let ubTextureH12 = SKTexture(imageNamed: "UBHealth12")
    let ubTextureH11 = SKTexture(imageNamed: "UBHealth11")
    let ubTextureH10 = SKTexture(imageNamed: "UBHealth10")
    let ubTextureH9 = SKTexture(imageNamed: "UBHealth9")
    let ubTextureH8 = SKTexture(imageNamed: "UBHealth8")
    let ubTextureH7 = SKTexture(imageNamed: "UBHealth7")
    let ubTextureH6 = SKTexture(imageNamed: "UBHealth6")
    let ubTextureH5 = SKTexture(imageNamed: "UBHealth5")
    let ubTextureH4 = SKTexture(imageNamed: "UBHealth4")
    let ubTextureH3 = SKTexture(imageNamed: "UBHealth3")
    let ubTextureH2 = SKTexture(imageNamed: "UBHealth2")
    let ubTextureH1 = SKTexture(imageNamed: "UBHealth1")
    
    let paddle = SKSpriteNode(imageNamed: "Paddle")
    var ballTexture = SKTexture(imageNamed: "Ball")
    let ball = SKSpriteNode()
    
    var gameStarted = false
    var gameOver = false
    
    var score = 0
    let scoreLbl = SKLabelNode(fontNamed: "ChalkDuster")
    
    let lvlLbl = SKLabelNode(fontNamed: "ChalkDuster")
    
    var brickCount = 32
    
    var ch1lvl49Unlocked  = UserDefaults.standard.bool(forKey: "ch1lvl49Unlocked")
    
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
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.lightGray
        self.anchorPoint = CGPoint(x: 0, y: 0)
        self.physicsWorld.contactDelegate = self
        
        lvlLbl.text = "Level 48"
        lvlLbl.fontSize = self.frame.width / 8
        lvlLbl.fontColor = SKColor.white
        lvlLbl.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        lvlLbl.zPosition = 5
        self.addChild(lvlLbl)
        
        let brickSize = CGSize(width: (self.frame.width / 7) / 1.1, height: (self.frame.width / 12) / 1.1)
        let sbSize = CGSize(width: (self.frame.width / 7) / 1.1, height: (self.frame.width / 7) / 1.1)
        let ubSize = CGSize(width: (self.frame.width / 12) / 1.1, height: (self.frame.width / 12) / 1.1)
        
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
        
        paddle.size = CGSize(width: (self.frame.width / 4.5) / 1.1, height: (self.frame.height / 22) / 1.1)
        paddle.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 18)
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
        ball.size = CGSize(width: (self.frame.width / 15) / 1.1, height: (self.frame.width / 15) / 1.1)
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
        
        brick1.texture = sbTextureH10
        brick1.size = sbSize
        brick1.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.2)
        brick1.name = "brick1"
        self.addChild(brick1)
        brick1.physicsBody = SKPhysicsBody(rectangleOf: sbSize)
        brick1.physicsBody?.affectedByGravity = false
        brick1.physicsBody?.isDynamic = false
        brick1.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick1.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick1.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick2.texture = sbTextureH10
        brick2.size = sbSize
        brick2.position = CGPoint(x: brick1.position.x + brickSize.width, y: brick1.position.y - brickSize.width)
        brick2.name = "brick2"
        self.addChild(brick2)
        brick2.physicsBody = SKPhysicsBody(rectangleOf: sbSize)
        brick2.physicsBody?.affectedByGravity = false
        brick2.physicsBody?.isDynamic = false
        brick2.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick2.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick2.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick3.texture = sbTextureH10
        brick3.size = sbSize
        brick3.position = CGPoint(x: brick2.position.x + brickSize.width, y: brick2.position.y - brickSize.width)
        brick3.name = "brick3"
        self.addChild(brick3)
        brick3.physicsBody = SKPhysicsBody(rectangleOf: sbSize)
        brick3.physicsBody?.affectedByGravity = false
        brick3.physicsBody?.isDynamic = false
        brick3.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick3.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick3.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick4.texture = sbTextureH10
        brick4.size = sbSize
        brick4.position = CGPoint(x: brick3.position.x + brickSize.width, y: brick3.position.y - brickSize.width)
        brick4.name = "brick4"
        self.addChild(brick4)
        brick4.physicsBody = SKPhysicsBody(rectangleOf: sbSize)
        brick4.physicsBody?.affectedByGravity = false
        brick4.physicsBody?.isDynamic = false
        brick4.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick4.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick4.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick5.texture = sbTextureH10
        brick5.size = sbSize
        brick5.position = CGPoint(x: brick1.position.x - brickSize.width, y: brick1.position.y - brickSize.width)
        brick5.name = "brick5"
        self.addChild(brick5)
        brick5.physicsBody = SKPhysicsBody(rectangleOf: sbSize)
        brick5.physicsBody?.affectedByGravity = false
        brick5.physicsBody?.isDynamic = false
        brick5.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick5.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick5.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick6.texture = sbTextureH10
        brick6.size = sbSize
        brick6.position = CGPoint(x: brick5.position.x - brickSize.width, y: brick5.position.y - brickSize.width)
        brick6.name = "brick6"
        self.addChild(brick6)
        brick6.physicsBody = SKPhysicsBody(rectangleOf: sbSize)
        brick6.physicsBody?.affectedByGravity = false
        brick6.physicsBody?.isDynamic = false
        brick6.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick6.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick6.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick7.texture = sbTextureH10
        brick7.size = sbSize
        brick7.position = CGPoint(x: brick6.position.x - brickSize.width, y: brick6.position.y - brickSize.width)
        brick7.name = "brick7"
        self.addChild(brick7)
        brick7.physicsBody = SKPhysicsBody(rectangleOf: sbSize)
        brick7.physicsBody?.affectedByGravity = false
        brick7.physicsBody?.isDynamic = false
        brick7.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick7.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick7.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick8.texture = brickTextureHealth4
        brick8.size = brickSize
        brick8.position = CGPoint(x: brick1.position.x, y: brick1.position.y - (brickSize.height * 1.35))
        brick8.name = "brick8"
        self.addChild(brick8)
        brick8.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick8.physicsBody?.affectedByGravity = false
        brick8.physicsBody?.isDynamic = false
        brick8.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick8.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick8.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick9.texture = brickTextureHealth4
        brick9.size = brickSize
        brick9.position = CGPoint(x: brick2.position.x, y: brick2.position.y - (brickSize.height * 1.35))
        brick9.name = "brick9"
        self.addChild(brick9)
        brick9.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick9.physicsBody?.affectedByGravity = false
        brick9.physicsBody?.isDynamic = false
        brick9.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick9.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick9.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick10.texture = brickTextureHealth4
        brick10.size = brickSize
        brick10.position = CGPoint(x: brick2.position.x, y: brick2.position.y + (brickSize.height * 1.35))
        brick10.name = "brick10"
        self.addChild(brick10)
        brick10.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick10.physicsBody?.affectedByGravity = false
        brick10.physicsBody?.isDynamic = false
        brick10.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick10.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick10.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick11.texture = brickTextureHealth4
        brick11.size = brickSize
        brick11.position = CGPoint(x: brick3.position.x, y: brick3.position.y + (brickSize.height * 1.35))
        brick11.name = "brick11"
        self.addChild(brick11)
        brick11.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick11.physicsBody?.affectedByGravity = false
        brick11.physicsBody?.isDynamic = false
        brick11.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick11.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick11.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick12.texture = brickTextureHealth4
        brick12.size = brickSize
        brick12.position = CGPoint(x: brick3.position.x, y: brick3.position.y - (brickSize.height * 1.35))
        brick12.name = "brick12"
        self.addChild(brick12)
        brick12.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick12.physicsBody?.affectedByGravity = false
        brick12.physicsBody?.isDynamic = false
        brick12.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick12.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick12.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick13.texture = brickTextureHealth4
        brick13.size = brickSize
        brick13.position = CGPoint(x: brick4.position.x, y: brick4.position.y + (brickSize.height * 1.35))
        brick13.name = "brick13"
        self.addChild(brick13)
        brick13.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick13.physicsBody?.affectedByGravity = false
        brick13.physicsBody?.isDynamic = false
        brick13.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick13.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick13.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick14.texture = brickTextureHealth4
        brick14.size = brickSize
        brick14.position = CGPoint(x: brick4.position.x, y: brick4.position.y - (brickSize.height * 1.35))
        brick14.name = "brick14"
       self.addChild(brick14)
        brick14.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick14.physicsBody?.affectedByGravity = false
        brick14.physicsBody?.isDynamic = false
        brick14.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick14.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick14.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick15.texture = brickTextureHealth4
        brick15.size = brickSize
        brick15.position = CGPoint(x: brick1.position.x, y: brick1.position.y + (brickSize.height * 1.35))
        brick15.name = "brick15"
        self.addChild(brick15)
        brick15.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick15.physicsBody?.affectedByGravity = false
        brick15.physicsBody?.isDynamic = false
        brick15.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick15.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick15.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick16.texture = brickTextureHealth4
        brick16.size = brickSize
        brick16.position = CGPoint(x: brick5.position.x, y: brick5.position.y + (brickSize.height * 1.35))
        brick16.name = "brick16"
        self.addChild(brick16)
        brick16.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick16.physicsBody?.affectedByGravity = false
        brick16.physicsBody?.isDynamic = false
        brick16.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick16.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick16.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick17.texture = brickTextureHealth4
        brick17.size = brickSize
        brick17.position = CGPoint(x: brick5.position.x, y: brick5.position.y - (brickSize.height * 1.35))
        brick17.name = "brick17"
        self.addChild(brick17)
        brick17.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick17.physicsBody?.affectedByGravity = false
        brick17.physicsBody?.isDynamic = false
        brick17.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick17.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick17.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick18.texture = brickTextureHealth4
        brick18.size = brickSize
        brick18.position = CGPoint(x: brick6.position.x, y: brick6.position.y + (brickSize.height * 1.35))
        brick18.name = "brick18"
        self.addChild(brick18)
        brick18.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick18.physicsBody?.affectedByGravity = false
        brick18.physicsBody?.isDynamic = false
        brick18.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick18.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick18.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick19.texture = brickTextureHealth4
        brick19.size = brickSize
        brick19.position = CGPoint(x: brick6.position.x, y: brick6.position.y - (brickSize.height * 1.35))
        brick19.name = "brick19"
        self.addChild(brick19)
        brick19.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick19.physicsBody?.affectedByGravity = false
        brick19.physicsBody?.isDynamic = false
        brick19.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick19.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick19.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick20.texture = brickTextureHealth4
        brick20.size = brickSize
        brick20.position = CGPoint(x: brick7.position.x, y: brick7.position.y - (brickSize.height * 1.35))
        brick20.name = "brick20"
        self.addChild(brick20)
        brick20.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick20.physicsBody?.affectedByGravity = false
        brick20.physicsBody?.isDynamic = false
        brick20.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick20.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick20.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick21.texture = brickTextureHealth4
        brick21.size = brickSize
        brick21.position = CGPoint(x: brick7.position.x, y: brick7.position.y + (brickSize.height * 1.35))
        brick21.name = "brick21"
        self.addChild(brick21)
        brick21.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick21.physicsBody?.affectedByGravity = false
        brick21.physicsBody?.isDynamic = false
        brick21.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick21.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick21.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick22.texture = ubTextureH20
        brick22.size = ubSize
        brick22.position = CGPoint(x: brick20.position.x + (brickSize.height * 1.35), y: brick20.position.y)
        brick22.name = "brick22"
        self.addChild(brick22)
        brick22.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick22.physicsBody?.affectedByGravity = false
        brick22.physicsBody?.isDynamic = false
        brick22.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick22.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick22.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick23.texture = ubTextureH20
        brick23.size = ubSize
        brick23.position = CGPoint(x: brick19.position.x + (brickSize.height * 1.35), y: brick19.position.y)
        brick23.name = "brick23"
        self.addChild(brick23)
        brick23.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick23.physicsBody?.affectedByGravity = false
        brick23.physicsBody?.isDynamic = false
        brick23.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick23.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick23.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick24.texture = ubTextureH20
        brick24.size = ubSize
        brick24.position = CGPoint(x: self.frame.width / 2, y: brick17.position.y)
        brick24.name = "brick24"
        self.addChild(brick24)
        brick24.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick24.physicsBody?.affectedByGravity = false
        brick24.physicsBody?.isDynamic = false
        brick24.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick24.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick24.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick25.texture = ubTextureH20
        brick25.size = ubSize
        brick25.position = CGPoint(x: brick12.position.x - (brickSize.height * 1.35), y: brick12.position.y)
        brick25.name = "brick25"
        self.addChild(brick25)
        brick25.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick25.physicsBody?.affectedByGravity = false
        brick25.physicsBody?.isDynamic = false
        brick25.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick25.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick25.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick26.texture = ubTextureH20
        brick26.size = ubSize
        brick26.position = CGPoint(x: brick14.position.x - (brickSize.height * 1.35), y: brick14.position.y)
        brick26.name = "brick26"
        self.addChild(brick26)
        brick26.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick26.physicsBody?.affectedByGravity = false
        brick26.physicsBody?.isDynamic = false
        brick26.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick26.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick26.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick27.texture = ubTextureH20
        brick27.size = ubSize
        brick27.position = CGPoint(x: brick18.position.x - (brickSize.height * 1.35), y: brick18.position.y)
        brick27.name = "brick27"
        self.addChild(brick27)
        brick27.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick27.physicsBody?.affectedByGravity = false
        brick27.physicsBody?.isDynamic = false
        brick27.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick27.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick27.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick28.texture = ubTextureH20
        brick28.size = ubSize
        brick28.position = CGPoint(x: brick16.position.x - (brickSize.height * 1.35), y: brick16.position.y)
        brick28.name = "brick28"
        self.addChild(brick28)
        brick28.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick28.physicsBody?.affectedByGravity = false
        brick28.physicsBody?.isDynamic = false
        brick28.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick28.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick28.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick29.texture = ubTextureH20
        brick29.size = ubSize
        brick29.position = CGPoint(x: brick15.position.x - (brickSize.height * 1.35), y: brick15.position.y)
        brick29.name = "brick29"
        self.addChild(brick29)
        brick29.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick29.physicsBody?.affectedByGravity = false
        brick29.physicsBody?.isDynamic = false
        brick29.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick29.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick29.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick30.texture = ubTextureH20
        brick30.size = ubSize
        brick30.position = CGPoint(x: brick15.position.x + (brickSize.height * 1.35), y: brick15.position.y)
        brick30.name = "brick30"
        self.addChild(brick30)
        brick30.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick30.physicsBody?.affectedByGravity = false
        brick30.physicsBody?.isDynamic = false
        brick30.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick30.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick30.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick31.texture = ubTextureH20
        brick31.size = ubSize
        brick31.position = CGPoint(x: brick11.position.x + (brickSize.height * 1.35), y: brick11.position.y)
        brick31.name = "brick31"
        self.addChild(brick31)
        brick31.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick31.physicsBody?.affectedByGravity = false
        brick31.physicsBody?.isDynamic = false
        brick31.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick31.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick31.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick32.texture = ubTextureH20
        brick32.size = ubSize
        brick32.position = CGPoint(x: brick10.position.x + (brickSize.height * 1.35), y: brick10.position.y)
        brick32.name = "brick32"
        self.addChild(brick32)
        brick32.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick32.physicsBody?.affectedByGravity = false
        brick32.physicsBody?.isDynamic = false
        brick32.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick32.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick32.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
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
            if (firstBody.name == "ball") && (secondBody.name == "brick19") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick19") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick20") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick20") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick21") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick21") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick22") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick22") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick23") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick23") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick24") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick24") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick25") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick25") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick26") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick26") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick27") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick27") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick28") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick28") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick29") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick29") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick30") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick30") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick31") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick31") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick32") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick32") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "bottomBarrier") {
                //ballHitBottomBarrier(Ball: firstBody, Barrier: secondBody)
            } else if (firstBody.name == "bottomBarrier") && (secondBody.name == "ball") {
                //ballHitBottomBarrier(Ball: secondBody, Barrier: firstBody)
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
                
                let vector = CGVector(dx: 120 * dx, dy: 120 * dy)
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
                let scene = ch1lvl48Scene(size: CGSize(width: 640, height: 1136))
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
                let scene = ch1lvl49Scene(size: CGSize(width: 640, height: 1136))
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
        
        let sbExplosion = SKEmitterNode()
        let sbParticleTexture = SKTexture(imageNamed: "SBExplosionParticle")
        
        let ubExplosion = SKEmitterNode()
        let ubParticleTexture = SKTexture(imageNamed: "UBExplosionParticle")
        
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
        
        sbExplosion.particleTexture = sbParticleTexture
        sbExplosion.particleSize = CGSize(width: self.frame.width / 15, height: self.frame.height / 20)
        sbExplosion.particleBirthRate = 100
        sbExplosion.particleAlpha = 1
        sbExplosion.particleLifetime = 0.5
        sbExplosion.particleAlpha = 1
        sbExplosion.emissionAngle = 360
        sbExplosion.emissionAngleRange = 25
        sbExplosion.particleSpeed = 100
        sbExplosion.particleSpeedRange = 50
        sbExplosion.alpha = 1
        sbExplosion.particleScale = 0.5
        sbExplosion.zPosition = 3
        sbExplosion.particleLifetimeRange = 0
        sbExplosion.particlePositionRange = CGVector(dx: 0, dy: 0)
        sbExplosion.zPosition = 5
        
        ubExplosion.particleTexture = ubParticleTexture
        ubExplosion.particleSize = CGSize(width: self.frame.width / 15, height: self.frame.height / 20)
        ubExplosion.particleBirthRate = 100
        ubExplosion.particleAlpha = 1
        ubExplosion.particleLifetime = 0.5
        ubExplosion.particleAlpha = 1
        ubExplosion.emissionAngle = 360
        ubExplosion.emissionAngleRange = 25
        ubExplosion.particleSpeed = 100
        ubExplosion.particleSpeedRange = 50
        ubExplosion.alpha = 1
        ubExplosion.particleScale = 0.5
        ubExplosion.zPosition = 3
        ubExplosion.particleLifetimeRange = 0
        ubExplosion.particlePositionRange = CGVector(dx: 0, dy: 0)
        ubExplosion.zPosition = 5
        
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
            if brickLives[0] == 10 {
                brickLives[0] -= 1
                brick1.texture = sbTextureH9
            } else if brickLives[0] == 9 {
                brickLives[0] -= 1
                brick1.texture = sbTextureH8
            } else if brickLives[0] == 8 {
                brickLives[0] -= 1
                brick1.texture = sbTextureH7
            } else if brickLives[0] == 7 {
                brickLives[0] -= 1
                brick1.texture = sbTextureH6
            } else if brickLives[0] == 6 {
                brickLives[0] -= 1
                brick1.texture = sbTextureH5
            } else if brickLives[0] == 5 {
                brickLives[0] -= 1
                brick1.texture = sbTextureH4
            } else if brickLives[0] == 4 {
                brickLives[0] -= 1
                brick1.texture = sbTextureH3
            } else if brickLives[0] == 3 {
                brickLives[0] -= 1
                brick1.texture = sbTextureH2
            } else if brickLives[0] == 2 {
                brickLives[0] -= 1
                brick1.texture = sbTextureH1
            } else if brickLives[0] == 1 {
                brickCount -= 1
                brick1.removeFromParent()
                sbExplosion.position = brick1.position
                self.addChild(sbExplosion)
                self.run(explosionWait, completion: {
                    sbExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick2" {
            if brickLives[1] == 10 {
                brickLives[1] -= 1
                brick2.texture = sbTextureH9
            } else if brickLives[1] == 9 {
                brickLives[1] -= 1
                brick2.texture = sbTextureH8
            } else if brickLives[1] == 8 {
                brickLives[1] -= 1
                brick2.texture = sbTextureH7
            } else if brickLives[1] == 7 {
                brickLives[1] -= 1
                brick2.texture = sbTextureH6
            } else if brickLives[1] == 6 {
                brickLives[1] -= 1
                brick2.texture = sbTextureH5
            } else if brickLives[1] == 5 {
                brickLives[1] -= 1
                brick2.texture = sbTextureH4
            } else if brickLives[1] == 4 {
                brickLives[1] -= 1
                brick2.texture = sbTextureH3
            } else if brickLives[1] == 3 {
                brickLives[1] -= 1
                brick2.texture = sbTextureH2
            } else if brickLives[1] == 2 {
                brickLives[1] -= 1
                brick2.texture = sbTextureH1
            } else if brickLives[1] == 1 {
                brickCount -= 1
                brick2.removeFromParent()
                sbExplosion.position = brick2.position
                self.addChild(sbExplosion)
                self.run(explosionWait, completion: {
                    sbExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick3" {
            if brickLives[2] == 10 {
                brickLives[2] -= 1
                brick3.texture = sbTextureH9
            } else if brickLives[2] == 9 {
                brickLives[2] -= 1
                brick3.texture = sbTextureH8
            } else if brickLives[2] == 8 {
                brickLives[2] -= 1
                brick3.texture = sbTextureH7
            } else if brickLives[2] == 7 {
                brickLives[2] -= 1
                brick3.texture = sbTextureH6
            } else if brickLives[2] == 6 {
                brickLives[2] -= 1
                brick3.texture = sbTextureH5
            } else if brickLives[2] == 5 {
                brickLives[2] -= 1
                brick3.texture = sbTextureH4
            } else if brickLives[2] == 4 {
                brickLives[2] -= 1
                brick3.texture = sbTextureH3
            } else if brickLives[2] == 3 {
                brickLives[2] -= 1
                brick3.texture = sbTextureH2
            } else if brickLives[2] == 2 {
                brickLives[2] -= 1
                brick3.texture = sbTextureH1
            } else if brickLives[2] == 1 {
                brickCount -= 1
                brick3.removeFromParent()
                sbExplosion.position = brick3.position
                self.addChild(sbExplosion)
                self.run(explosionWait, completion: {
                    sbExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick4" {
            if brickLives[3] == 10 {
                brickLives[3] -= 1
                brick4.texture = sbTextureH9
            } else if brickLives[3] == 9 {
                brickLives[3] -= 1
                brick4.texture = sbTextureH8
            } else if brickLives[3] == 8 {
                brickLives[3] -= 1
                brick4.texture = sbTextureH7
            } else if brickLives[3] == 7 {
                brickLives[3] -= 1
                brick4.texture = sbTextureH6
            } else if brickLives[3] == 6 {
                brickLives[3] -= 1
                brick4.texture = sbTextureH5
            } else if brickLives[3] == 5 {
                brickLives[3] -= 1
                brick4.texture = sbTextureH4
            } else if brickLives[3] == 4 {
                brickLives[3] -= 1
                brick4.texture = sbTextureH3
            } else if brickLives[3] == 3 {
                brickLives[3] -= 1
                brick4.texture = sbTextureH2
            } else if brickLives[3] == 2 {
                brickLives[3] -= 1
                brick4.texture = sbTextureH1
            } else if brickLives[3] == 1 {
                brickCount -= 1
                brick4.removeFromParent()
                sbExplosion.position = brick4.position
                self.addChild(sbExplosion)
                self.run(explosionWait, completion: {
                    sbExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick5" {
            if brickLives[4] == 10 {
                brickLives[4] -= 1
                brick5.texture = sbTextureH9
            } else if brickLives[4] == 9 {
                brickLives[4] -= 1
                brick5.texture = sbTextureH8
            } else if brickLives[4] == 8 {
                brickLives[4] -= 1
                brick5.texture = sbTextureH7
            } else if brickLives[4] == 7 {
                brickLives[4] -= 1
                brick5.texture = sbTextureH6
            } else if brickLives[4] == 6 {
                brickLives[4] -= 1
                brick5.texture = sbTextureH5
            } else if brickLives[4] == 5 {
                brickLives[4] -= 1
                brick5.texture = sbTextureH4
            } else if brickLives[4] == 4 {
                brickLives[4] -= 1
                brick5.texture = sbTextureH3
            } else if brickLives[4] == 3 {
                brickLives[4] -= 1
                brick5.texture = sbTextureH2
            } else if brickLives[4] == 2 {
                brickLives[4] -= 1
                brick5.texture = sbTextureH1
            } else if brickLives[4] == 1 {
                brickCount -= 1
                brick5.removeFromParent()
                sbExplosion.position = brick5.position
                self.addChild(sbExplosion)
                self.run(explosionWait, completion: {
                    sbExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick6" {
            if brickLives[5] == 10 {
                brickLives[5] -= 1
                brick6.texture = sbTextureH9
            } else if brickLives[5] == 9 {
                brickLives[5] -= 1
                brick6.texture = sbTextureH8
            } else if brickLives[5] == 8 {
                brickLives[5] -= 1
                brick6.texture = sbTextureH7
            } else if brickLives[5] == 7 {
                brickLives[5] -= 1
                brick6.texture = sbTextureH6
            } else if brickLives[5] == 6 {
                brickLives[5] -= 1
                brick6.texture = sbTextureH5
            } else if brickLives[5] == 5 {
                brickLives[5] -= 1
                brick6.texture = sbTextureH4
            } else if brickLives[5] == 4 {
                brickLives[5] -= 1
                brick6.texture = sbTextureH3
            } else if brickLives[5] == 3 {
                brickLives[5] -= 1
                brick6.texture = sbTextureH2
            } else if brickLives[5] == 2 {
                brickLives[5] -= 1
                brick6.texture = sbTextureH1
            } else if brickLives[5] == 1 {
                brickCount -= 1
                brick6.removeFromParent()
                sbExplosion.position = brick6.position
                self.addChild(sbExplosion)
                self.run(explosionWait, completion: {
                    sbExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick7" {
            if brickLives[6] == 10 {
                brickLives[6] -= 1
                brick7.texture = sbTextureH9
            } else if brickLives[6] == 9 {
                brickLives[6] -= 1
                brick7.texture = sbTextureH8
            } else if brickLives[6] == 8 {
                brickLives[6] -= 1
                brick7.texture = sbTextureH7
            } else if brickLives[6] == 7 {
                brickLives[6] -= 1
                brick7.texture = sbTextureH6
            } else if brickLives[6] == 6 {
                brickLives[6] -= 1
                brick7.texture = sbTextureH5
            } else if brickLives[6] == 5 {
                brickLives[6] -= 1
                brick7.texture = sbTextureH4
            } else if brickLives[6] == 4 {
                brickLives[6] -= 1
                brick7.texture = sbTextureH3
            } else if brickLives[6] == 3 {
                brickLives[6] -= 1
                brick7.texture = sbTextureH2
            } else if brickLives[6] == 2 {
                brickLives[6] -= 1
                brick7.texture = sbTextureH1
            } else if brickLives[6] == 1 {
                brickCount -= 1
                brick7.removeFromParent()
                sbExplosion.position = brick7.position
                self.addChild(sbExplosion)
                self.run(explosionWait, completion: {
                    sbExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick8" {
            if brickLives[7] == 4 {
                brickLives[7] -= 1
                brick8.texture = brickTextureHealth3
            } else if brickLives[7] == 3 {
                brickLives[7] -= 1
                brick8.texture = brickTextureHealth2
            } else if brickLives[7] == 2 {
                brickLives[7] -= 1
                brick8.texture = brickTextureHealth1
            } else if brickLives[7] == 1 {
                brickCount -= 1
                brick8.removeFromParent()
                brickExplosion.position = brick8.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick9" {
            if brickLives[8] == 4 {
                brickLives[8] -= 1
                brick9.texture = brickTextureHealth3
            } else if brickLives[8] == 3 {
                brickLives[8] -= 1
                brick9.texture = brickTextureHealth2
            } else if brickLives[8] == 2 {
                brickLives[8] -= 1
                brick9.texture = brickTextureHealth1
            } else if brickLives[8] == 1 {
                brickCount -= 1
                brick9.removeFromParent()
                brickExplosion.position = brick9.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick10" {
            if brickLives[9] == 4 {
                brickLives[9] -= 1
                brick10.texture = brickTextureHealth3
            } else if brickLives[9] == 3 {
                brickLives[9] -= 1
                brick10.texture = brickTextureHealth2
            } else if brickLives[9] == 2 {
                brickLives[9] -= 1
                brick10.texture = brickTextureHealth1
            } else if brickLives[9] == 1 {
                brickCount -= 1
                brick10.removeFromParent()
                brickExplosion.position = brick10.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick11" {
            if brickLives[10] == 4 {
                brickLives[10] -= 1
                brick11.texture = brickTextureHealth3
            } else if brickLives[10] == 3 {
                brickLives[10] -= 1
                brick11.texture = brickTextureHealth2
            } else if brickLives[10] == 2 {
                brickLives[10] -= 1
                brick11.texture = brickTextureHealth1
            } else if brickLives[10] == 1 {
                brickCount -= 1
                brick11.removeFromParent()
                brickExplosion.position = brick11.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick12" {
            if brickLives[11] == 4 {
                brickLives[11] -= 1
                brick12.texture = brickTextureHealth3
            } else if brickLives[11] == 3 {
                brickLives[11] -= 1
                brick12.texture = brickTextureHealth2
            } else if brickLives[11] == 2 {
                brickLives[11] -= 1
                brick12.texture = brickTextureHealth1
            } else if brickLives[11] == 1 {
                brickCount -= 1
                brick12.removeFromParent()
                brickExplosion.position = brick12.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick13" {
            if brickLives[12] == 4 {
                brickLives[12] -= 1
                brick13.texture = brickTextureHealth3
            } else if brickLives[12] == 3 {
                brickLives[12] -= 1
                brick13.texture = brickTextureHealth2
            } else if brickLives[12] == 2 {
                brickLives[12] -= 1
                brick13.texture = brickTextureHealth1
            } else if brickLives[12] == 1 {
                brickCount -= 1
                brick13.removeFromParent()
                brickExplosion.position = brick13.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick14" {
            if brickLives[13] == 4 {
                brickLives[13] -= 1
                brick14.texture = brickTextureHealth3
            } else if brickLives[13] == 3 {
                brickLives[13] -= 1
                brick14.texture = brickTextureHealth2
            } else if brickLives[13] == 2 {
                brickLives[13] -= 1
                brick14.texture = brickTextureHealth1
            } else if brickLives[13] == 1 {
                brickCount -= 1
                brick14.removeFromParent()
                brickExplosion.position = brick14.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick15" {
            if brickLives[14] == 4 {
                brickLives[14] -= 1
                brick15.texture = brickTextureHealth3
            } else if brickLives[14] == 3 {
                brickLives[14] -= 1
                brick15.texture = brickTextureHealth2
            } else if brickLives[14] == 2 {
                brickLives[14] -= 1
                brick15.texture = brickTextureHealth1
            } else if brickLives[14] == 1 {
                brickCount -= 1
                brick15.removeFromParent()
                brickExplosion.position = brick15.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick16" {
            if brickLives[15] == 4 {
                brickLives[15] -= 1
                brick16.texture = brickTextureHealth3
            } else if brickLives[15] == 3 {
                brickLives[15] -= 1
                brick16.texture = brickTextureHealth2
            } else if brickLives[15] == 2 {
                brickLives[15] -= 1
                brick16.texture = brickTextureHealth1
            } else if brickLives[15] == 1 {
                brickCount -= 1
                brick16.removeFromParent()
                brickExplosion.position = brick16.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick17" {
            if brickLives[16] == 4 {
                brickLives[16] -= 1
                brick17.texture = brickTextureHealth3
            } else if brickLives[16] == 3 {
                brickLives[16] -= 1
                brick17.texture = brickTextureHealth2
            } else if brickLives[16] == 2 {
                brickLives[16] -= 1
                brick17.texture = brickTextureHealth1
            } else if brickLives[16] == 1 {
                brickCount -= 1
                brick17.removeFromParent()
                brickExplosion.position = brick17.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick18" {
            if brickLives[17] == 4 {
                brickLives[17] -= 1
                brick18.texture = brickTextureHealth3
            } else if brickLives[17] == 3 {
                brickLives[17] -= 1
                brick18.texture = brickTextureHealth2
            } else if brickLives[17] == 2 {
                brickLives[17] -= 1
                brick18.texture = brickTextureHealth1
            } else if brickLives[17] == 1 {
                brickCount -= 1
                brick18.removeFromParent()
                brickExplosion.position = brick18.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick19" {
            if brickLives[18] == 4 {
                brickLives[18] -= 1
                brick19.texture = brickTextureHealth3
            } else if brickLives[18] == 3 {
                brickLives[18] -= 1
                brick19.texture = brickTextureHealth2
            } else if brickLives[18] == 2 {
                brickLives[18] -= 1
                brick19.texture = brickTextureHealth1
            } else if brickLives[18] == 1 {
                brickCount -= 1
                brick19.removeFromParent()
                brickExplosion.position = brick19.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick20" {
            if brickLives[19] == 4 {
                brickLives[19] -= 1
                brick20.texture = brickTextureHealth3
            } else if brickLives[19] == 3 {
                brickLives[19] -= 1
                brick20.texture = brickTextureHealth2
            } else if brickLives[19] == 2 {
                brickLives[19] -= 1
                brick20.texture = brickTextureHealth1
            } else if brickLives[19] == 1 {
                brickCount -= 1
                brick20.removeFromParent()
                brickExplosion.position = brick20.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick21" {
            if brickLives[20] == 4 {
                brickLives[20] -= 1
                brick21.texture = brickTextureHealth3
            } else if brickLives[20] == 3 {
                brickLives[20] -= 1
                brick21.texture = brickTextureHealth2
            } else if brickLives[20] == 2 {
                brickLives[20] -= 1
                brick21.texture = brickTextureHealth1
            } else if brickLives[20] == 1 {
                brickCount -= 1
                brick21.removeFromParent()
                brickExplosion.position = brick21.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick22" {
            if brickLives[21] == 20 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH19
            } else if brickLives[21] == 19 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH18
            } else if brickLives[21] == 18 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH17
            } else if brickLives[21] == 17 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH16
            } else if brickLives[21] == 16 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH15
            } else if brickLives[21] == 15 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH14
            } else if brickLives[21] == 14 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH13
            } else if brickLives[21] == 13 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH12
            } else if brickLives[21] == 12 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH11
            } else if brickLives[21] == 11 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH10
            } else if brickLives[21] == 10 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH9
            } else if brickLives[21] == 9 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH8
            } else if brickLives[21] == 8 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH7
            } else if brickLives[21] == 7 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH6
            } else if brickLives[21] == 6 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH5
            } else if brickLives[21] == 5 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH4
            } else if brickLives[21] == 4 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH3
            } else if brickLives[21] == 3 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH2
            } else if brickLives[21] == 2 {
                brickLives[21] -= 1
                brick22.texture = ubTextureH1
            } else if brickLives[21] == 1 {
                brickCount -= 1
                brick22.removeFromParent()
                ubExplosion.position = brick22.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick23" {
            if brickLives[22] == 20 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH19
            } else if brickLives[22] == 19 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH18
            } else if brickLives[22] == 18 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH17
            } else if brickLives[22] == 17 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH16
            } else if brickLives[22] == 16 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH15
            } else if brickLives[22] == 15 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH14
            } else if brickLives[22] == 14 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH13
            } else if brickLives[22] == 13 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH12
            } else if brickLives[22] == 12 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH11
            } else if brickLives[22] == 11 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH10
            } else if brickLives[22] == 10 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH9
            } else if brickLives[22] == 9 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH8
            } else if brickLives[22] == 8 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH7
            } else if brickLives[22] == 7 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH6
            } else if brickLives[22] == 6 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH5
            } else if brickLives[22] == 5 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH4
            } else if brickLives[22] == 4 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH3
            } else if brickLives[22] == 3 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH2
            } else if brickLives[22] == 2 {
                brickLives[22] -= 1
                brick23.texture = ubTextureH1
            } else if brickLives[22] == 1 {
                brickCount -= 1
                brick23.removeFromParent()
                brickExplosion.position = brick23.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick24" {
            if brickLives[23] == 20 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH19
            } else if brickLives[23] == 19 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH18
            } else if brickLives[23] == 18 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH17
            } else if brickLives[23] == 17 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH16
            } else if brickLives[23] == 16 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH15
            } else if brickLives[23] == 15 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH14
            } else if brickLives[23] == 14 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH13
            } else if brickLives[23] == 13 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH12
            } else if brickLives[23] == 12 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH11
            } else if brickLives[23] == 11 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH10
            } else if brickLives[23] == 10 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH9
            } else if brickLives[23] == 9 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH8
            } else if brickLives[23] == 8 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH7
            } else if brickLives[23] == 7 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH6
            } else if brickLives[23] == 6 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH5
            } else if brickLives[23] == 5 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH4
            } else if brickLives[23] == 4 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH3
            } else if brickLives[23] == 3 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH2
            } else if brickLives[23] == 2 {
                brickLives[23] -= 1
                brick24.texture = ubTextureH1
            } else if brickLives[23] == 1 {
                brickCount -= 1
                brick24.removeFromParent()
                ubExplosion.position = brick24.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick25" {
            if brickLives[24] == 20 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH19
            } else if brickLives[24] == 19 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH18
            } else if brickLives[24] == 18 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH17
            } else if brickLives[24] == 17 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH16
            } else if brickLives[24] == 16 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH15
            } else if brickLives[24] == 15 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH14
            } else if brickLives[24] == 14 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH13
            } else if brickLives[24] == 13 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH12
            } else if brickLives[24] == 12 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH11
            } else if brickLives[24] == 11 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH10
            } else if brickLives[24] == 10 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH9
            } else if brickLives[24] == 9 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH8
            } else if brickLives[24] == 8 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH7
            } else if brickLives[24] == 7 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH6
            } else if brickLives[24] == 6 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH5
            } else if brickLives[24] == 5 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH4
            } else if brickLives[24] == 4 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH3
            } else if brickLives[24] == 3 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH2
            } else if brickLives[24] == 2 {
                brickLives[24] -= 1
                brick25.texture = ubTextureH1
            } else if brickLives[24] == 1 {
                brickCount -= 1
                brick25.removeFromParent()
                ubExplosion.position = brick25.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick26" {
            if brickLives[25] == 20 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH19
            } else if brickLives[25] == 19 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH18
            } else if brickLives[25] == 18 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH17
            } else if brickLives[25] == 17 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH16
            } else if brickLives[25] == 16 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH15
            } else if brickLives[25] == 15 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH14
            } else if brickLives[25] == 14 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH13
            } else if brickLives[25] == 13 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH12
            } else if brickLives[25] == 12 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH11
            } else if brickLives[25] == 11 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH10
            } else if brickLives[25] == 10 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH9
            } else if brickLives[25] == 9 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH8
            } else if brickLives[25] == 8 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH7
            } else if brickLives[25] == 7 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH6
            } else if brickLives[25] == 6 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH5
            } else if brickLives[25] == 5 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH4
            } else if brickLives[25] == 4 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH3
            } else if brickLives[25] == 3 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH2
            } else if brickLives[25] == 2 {
                brickLives[25] -= 1
                brick26.texture = ubTextureH1
            } else if brickLives[25] == 1 {
                brickCount -= 1
                brick26.removeFromParent()
                ubExplosion.position = brick26.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick27" {
            if brickLives[26] == 20 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH19
            } else if brickLives[26] == 19 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH18
            } else if brickLives[26] == 18 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH17
            } else if brickLives[26] == 17 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH16
            } else if brickLives[26] == 16 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH15
            } else if brickLives[26] == 15 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH14
            } else if brickLives[26] == 14 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH13
            } else if brickLives[26] == 13 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH12
            } else if brickLives[26] == 12 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH11
            } else if brickLives[26] == 11 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH10
            } else if brickLives[26] == 10 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH9
            } else if brickLives[26] == 9 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH8
            } else if brickLives[26] == 8 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH7
            } else if brickLives[26] == 7 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH6
            } else if brickLives[26] == 6 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH5
            } else if brickLives[26] == 5 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH4
            } else if brickLives[26] == 4 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH3
            } else if brickLives[26] == 3 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH2
            } else if brickLives[26] == 2 {
                brickLives[26] -= 1
                brick27.texture = ubTextureH1
            } else if brickLives[26] == 1 {
                brickCount -= 1
                brick27.removeFromParent()
                ubExplosion.position = brick27.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick28" {
            if brickLives[27] == 20 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH19
            } else if brickLives[27] == 19 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH18
            } else if brickLives[27] == 18 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH17
            } else if brickLives[27] == 17 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH16
            } else if brickLives[27] == 16 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH15
            } else if brickLives[27] == 15 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH14
            } else if brickLives[27] == 14 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH13
            } else if brickLives[27] == 13 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH12
            } else if brickLives[27] == 12 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH11
            } else if brickLives[27] == 11 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH10
            } else if brickLives[27] == 10 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH9
            } else if brickLives[27] == 9 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH8
            } else if brickLives[27] == 8 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH7
            } else if brickLives[27] == 7 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH6
            } else if brickLives[27] == 6 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH5
            } else if brickLives[27] == 5 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH4
            } else if brickLives[27] == 4 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH3
            } else if brickLives[27] == 3 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH2
            } else if brickLives[27] == 2 {
                brickLives[27] -= 1
                brick28.texture = ubTextureH1
            } else if brickLives[27] == 1 {
                brickCount -= 1
                brick28.removeFromParent()
                ubExplosion.position = brick28.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick29" {
            if brickLives[28] == 20 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH19
            } else if brickLives[28] == 19 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH18
            } else if brickLives[28] == 18 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH17
            } else if brickLives[28] == 17 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH16
            } else if brickLives[28] == 16 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH15
            } else if brickLives[28] == 15 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH14
            } else if brickLives[28] == 14 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH13
            } else if brickLives[28] == 13 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH12
            } else if brickLives[28] == 12 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH11
            } else if brickLives[28] == 11 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH10
            } else if brickLives[28] == 10 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH9
            } else if brickLives[28] == 9 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH8
            } else if brickLives[28] == 8 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH7
            } else if brickLives[28] == 7 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH6
            } else if brickLives[28] == 6 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH5
            } else if brickLives[28] == 5 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH4
            } else if brickLives[28] == 4 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH3
            } else if brickLives[28] == 3 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH2
            } else if brickLives[28] == 2 {
                brickLives[28] -= 1
                brick29.texture = ubTextureH1
            } else if brickLives[28] == 1 {
                brickCount -= 1
                brick29.removeFromParent()
                ubExplosion.position = brick29.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick30" {
            if brickLives[29] == 20 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH19
            } else if brickLives[29] == 19 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH18
            } else if brickLives[29] == 18 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH17
            } else if brickLives[29] == 17 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH16
            } else if brickLives[29] == 16 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH15
            } else if brickLives[29] == 15 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH14
            } else if brickLives[29] == 14 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH13
            } else if brickLives[29] == 13 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH12
            } else if brickLives[29] == 12 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH11
            } else if brickLives[29] == 11 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH10
            } else if brickLives[29] == 10 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH9
            } else if brickLives[29] == 9 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH8
            } else if brickLives[29] == 8 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH7
            } else if brickLives[29] == 7 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH6
            } else if brickLives[29] == 6 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH5
            } else if brickLives[29] == 5 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH4
            } else if brickLives[29] == 4 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH3
            } else if brickLives[29] == 3 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH2
            } else if brickLives[29] == 2 {
                brickLives[29] -= 1
                brick30.texture = ubTextureH1
            } else if brickLives[29] == 1 {
                brickCount -= 1
                brick30.removeFromParent()
                ubExplosion.position = brick30.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick31" {
            if brickLives[30] == 20 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH19
            } else if brickLives[30] == 19 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH18
            } else if brickLives[30] == 18 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH17
            } else if brickLives[30] == 17 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH16
            } else if brickLives[30] == 16 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH15
            } else if brickLives[30] == 15 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH14
            } else if brickLives[30] == 14 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH13
            } else if brickLives[30] == 13 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH12
            } else if brickLives[30] == 12 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH11
            } else if brickLives[30] == 11 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH10
            } else if brickLives[30] == 10 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH9
            } else if brickLives[30] == 9 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH8
            } else if brickLives[30] == 8 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH7
            } else if brickLives[30] == 7 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH6
            } else if brickLives[30] == 6 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH5
            } else if brickLives[30] == 5 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH4
            } else if brickLives[30] == 4 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH3
            } else if brickLives[30] == 3 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH2
            } else if brickLives[30] == 2 {
                brickLives[30] -= 1
                brick31.texture = ubTextureH1
            } else if brickLives[30] == 1 {
                brickCount -= 1
                brick31.removeFromParent()
                ubExplosion.position = brick31.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick32" {
            if brickLives[31] == 20 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH19
            } else if brickLives[31] == 19 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH18
            } else if brickLives[31] == 18 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH17
            } else if brickLives[31] == 17 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH16
            } else if brickLives[31] == 16 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH15
            } else if brickLives[31] == 15 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH14
            } else if brickLives[31] == 14 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH13
            } else if brickLives[31] == 13 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH12
            } else if brickLives[31] == 12 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH11
            } else if brickLives[31] == 11 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH10
            } else if brickLives[31] == 10 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH9
            } else if brickLives[31] == 9 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH8
            } else if brickLives[31] == 8 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH7
            } else if brickLives[31] == 7 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH6
            } else if brickLives[31] == 6 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH5
            } else if brickLives[31] == 5 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH4
            } else if brickLives[31] == 4 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH3
            } else if brickLives[31] == 3 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH2
            } else if brickLives[31] == 2 {
                brickLives[31] -= 1
                brick32.texture = ubTextureH1
            } else if brickLives[31] == 1 {
                brickCount -= 1
                brick32.removeFromParent()
                ubExplosion.position = brick32.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        
        if brickCount == 0  {
            self.addChild(ballExplosion)
            ball.removeFromParent()
            self.run(explosionWait, completion: {
                ballExplosion.removeFromParent()
            })
            timeTimer.invalidate()
            gameOver = true
            if ch1lvl49Unlocked == false {
                ch1lvl49Unlocked = true
                UserDefaults.standard.set(true, forKey: "ch1lvl49Unlocked")
                UserDefaults.standard.synchronize()
                continueBtnString = "ch1lvl49"
                UserDefaults.standard.set("ch1lvl49", forKey: "continueBtnString")
                UserDefaults.standard.synchronize()
            }
            UIView.animate(withDuration: 0.5, animations: {
                self.nextBtn.alpha = 1
                self.menuBtn.alpha = 1
                self.retryBtn.alpha = 1
            })
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
