//
//  ch1lvl55Scene.swift
//  Brickz
//
//  Created by Julian Cearley on 9/18/17.
//  Copyright © 2017 Julian Cearley. All rights reserved.
//

import UIKit
import SpriteKit

class ch1lvl55Scene: SKScene, SKPhysicsContactDelegate {
    
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
    let brick33 = SKSpriteNode()
    let brick34 = SKSpriteNode()
    let brick35 = SKSpriteNode()
    let brick36 = SKSpriteNode()
    let brick37 = SKSpriteNode()
    let brick38 = SKSpriteNode()
    let brick39 = SKSpriteNode()
    let brick40 = SKSpriteNode()
    let brick41 = SKSpriteNode()
    let brick42 = SKSpriteNode()
    let brick43 = SKSpriteNode()
    let brick44 = SKSpriteNode()
    let brick45 = SKSpriteNode()
    let brick46 = SKSpriteNode()
    let brick47 = SKSpriteNode()
    let brick48 = SKSpriteNode()
    let brick49 = SKSpriteNode()
    let brick50 = SKSpriteNode()
    let brick51 = SKSpriteNode()
    let brick52 = SKSpriteNode()
    let brick53 = SKSpriteNode()
    let brick54 = SKSpriteNode()
    let brick55 = SKSpriteNode()
    let brick56 = SKSpriteNode()
    let brick57 = SKSpriteNode()
    let brick58 = SKSpriteNode()
    let brick59 = SKSpriteNode()
    let brick60 = SKSpriteNode()
    let brick61 = SKSpriteNode()
    let brick62 = SKSpriteNode()
    let brick63 = SKSpriteNode()
    let brick64 = SKSpriteNode()
    let brick65 = SKSpriteNode()
    let brick66 = SKSpriteNode()
    
    var brickLives: Array = [4,4,4,4,4,4,4,4,4,4,4,20,20,20,20,20,20,20,20,20,20,20,4,4,4,4,4,4,4,4,4,4,4,20,20,20,20,20,20,20,20,20,20,20,4,4,4,4,4,4,4,4,4,4,4,20,20,20,20,20,20,20,20,20,20,20]

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
    
    var brickCount = 66
    
    var ch1lvl56Unlocked  = UserDefaults.standard.bool(forKey: "ch1lvl56Unlocked")
    
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
     
        lvlLbl.text = "Level 55"
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
        
        brick1.texture = brickTextureHealth4
        brick1.size = brickSize
        brick1.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.12)
        brick1.name = "brick1"
        brick1.zRotation = 1.6
        self.addChild(brick1)
        brick1.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick1.physicsBody?.affectedByGravity = false
        brick1.physicsBody?.isDynamic = false
        brick1.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick1.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick1.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick2.texture = brickTextureHealth4
        brick2.size = brickSize
        brick2.position = CGPoint(x: brick1.position.x + brickSize.height, y: brick1.position.y)
        brick2.name = "brick2"
        brick2.zRotation = 1.6
        self.addChild(brick2)
        brick2.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick2.physicsBody?.affectedByGravity = false
        brick2.physicsBody?.isDynamic = false
        brick2.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick2.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick2.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick3.texture = brickTextureHealth4
        brick3.size = brickSize
        brick3.position = CGPoint(x: brick2.position.x + brickSize.height, y: brick2.position.y)
        brick3.name = "brick3"
        brick3.zRotation = 1.6
        self.addChild(brick3)
        brick3.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick3.physicsBody?.affectedByGravity = false
        brick3.physicsBody?.isDynamic = false
        brick3.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick3.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick3.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick4.texture = brickTextureHealth4
        brick4.size = brickSize
        brick4.position = CGPoint(x: brick3.position.x + brickSize.height, y: brick3.position.y)
        brick4.name = "brick4"
        brick4.zRotation = 1.6
        self.addChild(brick4)
        brick4.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick4.physicsBody?.affectedByGravity = false
        brick4.physicsBody?.isDynamic = false
        brick4.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick4.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick4.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick5.texture = brickTextureHealth4
        brick5.size = brickSize
        brick5.position = CGPoint(x: brick4.position.x + brickSize.height, y: brick4.position.y)
        brick5.name = "brick5"
        brick5.zRotation = 1.6
        self.addChild(brick5)
        brick5.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick5.physicsBody?.affectedByGravity = false
        brick5.physicsBody?.isDynamic = false
        brick5.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick5.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick5.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick6.texture = brickTextureHealth4
        brick6.size = brickSize
        brick6.position = CGPoint(x: brick5.position.x + brickSize.height, y: brick5.position.y)
        brick6.name = "brick6"
        brick6.zRotation = 1.6
        self.addChild(brick6)
        brick6.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick6.physicsBody?.affectedByGravity = false
        brick6.physicsBody?.isDynamic = false
        brick6.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick6.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick6.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick7.texture = brickTextureHealth4
        brick7.size = brickSize
        brick7.position = CGPoint(x: brick1.position.x - brickSize.height, y: brick1.position.y)
        brick7.name = "brick7"
        brick7.zRotation = 1.6
        self.addChild(brick7)
        brick7.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick7.physicsBody?.affectedByGravity = false
        brick7.physicsBody?.isDynamic = false
        brick7.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick7.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick7.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick8.texture = brickTextureHealth4
        brick8.size = brickSize
        brick8.position = CGPoint(x: brick7.position.x - brickSize.height, y: brick7.position.y)
        brick8.name =  "brick8"
        brick8.zRotation = 1.6
        self.addChild(brick8)
        brick8.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick8.physicsBody?.affectedByGravity = false
        brick8.physicsBody?.isDynamic = false
        brick8.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick8.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick8.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick9.texture = brickTextureHealth4
        brick9.size = brickSize
        brick9.position = CGPoint(x: brick8.position.x - brickSize.height, y: brick8.position.y)
        brick9.name = "brick9"
        brick9.zRotation = 1.6
        self.addChild(brick9)
        brick9.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick9.physicsBody?.affectedByGravity = false
        brick9.physicsBody?.isDynamic = false
        brick9.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick9.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick9.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick10.texture = brickTextureHealth4
        brick10.size = brickSize
        brick10.position = CGPoint(x: brick9.position.x - brickSize.height, y: brick9.position.y)
        brick10.name = "brick10"
        brick10.zRotation = 1.6
        self.addChild(brick10)
        brick10.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick10.physicsBody?.affectedByGravity = false
        brick10.physicsBody?.isDynamic = false
        brick10.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick10.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick10.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick11.texture = brickTextureHealth4
        brick11.size = brickSize
        brick11.position = CGPoint(x: brick10.position.x - brickSize.height, y: brick10.position.y)
        brick11.name = "brick11"
        brick11.zRotation = 1.6
        self.addChild(brick11)
        brick11.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick11.physicsBody?.affectedByGravity = false
        brick11.physicsBody?.isDynamic = false
        brick11.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick11.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick11.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick12.texture = ubTextureH20
        brick12.size = ubSize
        brick12.position = CGPoint(x: brick11.position.x, y: brick11.position.y - (brickSize.height * 1.35))
        brick12.name = "brick12"
        self.addChild(brick12)
        brick12.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick12.physicsBody?.affectedByGravity = false
        brick12.physicsBody?.isDynamic = false
        brick12.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick12.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick12.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick13.texture = ubTextureH20
        brick13.size = ubSize
        brick13.position = CGPoint(x: brick12.position.x + brickSize.height, y: brick12.position.y)
        brick13.name = "brick13"
        self.addChild(brick13)
        brick13.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick13.physicsBody?.affectedByGravity = false
        brick13.physicsBody?.isDynamic = false
        brick13.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick13.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick13.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick14.texture = ubTextureH20
        brick14.size = ubSize
        brick14.position = CGPoint(x: brick13.position.x + brickSize.height, y: brick13.position.y)
        brick14.name = "brick14"
        self.addChild(brick14)
        brick14.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick14.physicsBody?.affectedByGravity = false
        brick14.physicsBody?.isDynamic = false
        brick14.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick14.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick14.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick15.texture = ubTextureH20
        brick15.size = ubSize
        brick15.position = CGPoint(x: brick14.position.x + brickSize.height, y: brick14.position.y)
        brick15.name = "brick15"
        self.addChild(brick15)
        brick15.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick15.physicsBody?.affectedByGravity = false
        brick15.physicsBody?.isDynamic = false
        brick1.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick1.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick1.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick16.texture = ubTextureH20
        brick16.size = ubSize
        brick16.position = CGPoint(x: brick15.position.x + brickSize.height, y: brick15.position.y)
        brick16.name = "brick16"
        self.addChild(brick16)
        brick16.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick16.physicsBody?.affectedByGravity = false
        brick16.physicsBody?.isDynamic = false
        brick16.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick16.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick16.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick17.texture = ubTextureH20
        brick17.size = ubSize
        brick17.position = CGPoint(x: brick16.position.x + brickSize.height, y: brick16.position.y)
        brick17.name = "brick17"
        self.addChild(brick17)
        brick17.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick17.physicsBody?.affectedByGravity = false
        brick17.physicsBody?.isDynamic = false
        brick17.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick17.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick17.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick18.texture = ubTextureH20
        brick18.size = ubSize
        brick18.position = CGPoint(x: brick17.position.x + brickSize.height, y: brick17.position.y)
        brick18.name = "brick18"
        self.addChild(brick18)
        brick18.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick18.physicsBody?.affectedByGravity = false
        brick18.physicsBody?.isDynamic = false
        brick18.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick18.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick18.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick19.texture = ubTextureH20
        brick19.size = ubSize
        brick19.position = CGPoint(x: brick18.position.x + brickSize.height, y: brick18.position.y)
        brick19.name = "brick19"
        self.addChild(brick19)
        brick19.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick19.physicsBody?.affectedByGravity = false
        brick19.physicsBody?.isDynamic = false
        brick19.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick19.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick19.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick20.texture = ubTextureH20
        brick20.size = ubSize
        brick20.position = CGPoint(x: brick19.position.x + brickSize.height, y: brick19.position.y)
        brick20.name = "brick20"
        self.addChild(brick20)
        brick20.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick20.physicsBody?.affectedByGravity = false
        brick20.physicsBody?.isDynamic = false
        brick20.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick20.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick20.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick21.texture = ubTextureH20
        brick21.size = ubSize
        brick21.position = CGPoint(x: brick20.position.x + brickSize.height, y: brick20.position.y)
        brick21.name = "brick21"
        self.addChild(brick21)
        brick21.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick21.physicsBody?.affectedByGravity = false
        brick21.physicsBody?.isDynamic = false
        brick21.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick21.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick21.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick22.texture = ubTextureH20
        brick22.size = ubSize
        brick22.position = CGPoint(x: brick21.position.x + brickSize.height, y: brick21.position.y)
        brick22.name = "brick22"
        self.addChild(brick22)
        brick22.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick22.physicsBody?.affectedByGravity = false
        brick22.physicsBody?.isDynamic = false
        brick22.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick22.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick22.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick23.texture = brickTextureHealth4
        brick23.size = brickSize
        brick23.position = CGPoint(x: brick22.position.x, y: brick22.position.y - (brickSize.height * 1.35))
        brick23.name = "brick23"
        brick23.zRotation = 1.6
        self.addChild(brick23)
        brick23.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick23.physicsBody?.affectedByGravity = false
        brick23.physicsBody?.isDynamic = false
        brick23.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick23.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick23.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick24.texture = brickTextureHealth4
        brick24.size = brickSize
        brick24.position = CGPoint(x: brick23.position.x - brickSize.height, y: brick23.position.y)
        brick24.name = "brick24"
        brick24.zRotation = 1.6
        self.addChild(brick24)
        brick24.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick24.physicsBody?.affectedByGravity = false
        brick24.physicsBody?.isDynamic = false
        brick24.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick24.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick24.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick25.texture = brickTextureHealth4
        brick25.size = brickSize
        brick25.position = CGPoint(x: brick24.position.x - brickSize.height, y: brick24.position.y)
        brick25.name = "brick25"
        brick25.zRotation = 1.6
        self.addChild(brick25)
        brick25.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick25.physicsBody?.affectedByGravity = false
        brick25.physicsBody?.isDynamic = false
        brick25.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick25.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick25.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick26.texture = brickTextureHealth4
        brick26.size = brickSize
        brick26.position = CGPoint(x: brick25.position.x - brickSize.height, y: brick25.position.y)
        brick26.name = "brick26"
        brick26.zRotation = 1.6
        self.addChild(brick26)
        brick26.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick26.physicsBody?.affectedByGravity = false
        brick26.physicsBody?.isDynamic = false
        brick26.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick26.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick26.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick27.texture = brickTextureHealth4
        brick27.size = brickSize
        brick27.position = CGPoint(x: brick26.position.x - brickSize.height, y: brick26.position.y)
        brick27.name = "brick27"
        brick27.zRotation = 1.6
        self.addChild(brick27)
        brick27.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick27.physicsBody?.affectedByGravity = false
        brick27.physicsBody?.isDynamic = false
        brick27.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick27.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick27.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick28.texture = brickTextureHealth4
        brick28.size = brickSize
        brick28.position = CGPoint(x: brick27.position.x - brickSize.height, y: brick27.position.y)
        brick28.name = "brick28"
        brick28.zRotation = 1.6
        self.addChild(brick28)
        brick28.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick28.physicsBody?.affectedByGravity = false
        brick28.physicsBody?.isDynamic = false
        brick28.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick28.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick28.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick29.texture = brickTextureHealth4
        brick29.size = brickSize
        brick29.position = CGPoint(x: brick28.position.x - brickSize.height, y: brick28.position.y)
        brick29.name = "brick29"
        brick29.zRotation = 1.6
        self.addChild(brick29)
        brick29.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick29.physicsBody?.affectedByGravity = false
        brick29.physicsBody?.isDynamic = false
        brick29.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick29.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick29.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick30.texture = brickTextureHealth4
        brick30.size = brickSize
        brick30.position = CGPoint(x: brick29.position.x - brickSize.height, y: brick29.position.y)
        brick30.name = "brick30"
        brick30.zRotation = 1.6
        self.addChild(brick30)
        brick30.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick30.physicsBody?.affectedByGravity = false
        brick30.physicsBody?.isDynamic = false
        brick30.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick30.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick30.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick31.texture = brickTextureHealth4
        brick31.size = brickSize
        brick31.position = CGPoint(x: brick30.position.x - brickSize.height, y: brick30.position.y)
        brick31.name = "brick31"
        brick31.zRotation = 1.6
        self.addChild(brick31)
        brick31.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick31.physicsBody?.affectedByGravity = false
        brick31.physicsBody?.isDynamic = false
        brick31.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick31.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick31.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick32.texture = brickTextureHealth4
        brick32.size = brickSize
        brick32.position = CGPoint(x: brick31.position.x - brickSize.height, y: brick31.position.y)
        brick32.name = "brick32"
        brick32.zRotation = 1.6
        self.addChild(brick32)
        brick32.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick32.physicsBody?.affectedByGravity = false
        brick32.physicsBody?.isDynamic = false
        brick32.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick32.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick32.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick33.texture = brickTextureHealth4
        brick33.size = brickSize
        brick33.position = CGPoint(x: brick32.position.x - brickSize.height, y: brick32.position.y)
        brick33.name = "brick33"
        brick33.zRotation = 1.6
        self.addChild(brick33)
        brick33.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick33.physicsBody?.affectedByGravity = false
        brick33.physicsBody?.isDynamic = false
        brick33.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick33.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick33.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick34.texture = ubTextureH20
        brick34.size = ubSize
        brick34.position = CGPoint(x: brick33.position.x, y: brick33.position.y - (brickSize.height * 1.35))
        brick34.name = "brick34"
        self.addChild(brick34)
        brick34.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick34.physicsBody?.affectedByGravity = false
        brick34.physicsBody?.isDynamic = false
        brick34.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick34.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick34.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick35.texture = ubTextureH20
        brick35.size = ubSize
        brick35.position = CGPoint(x: brick34.position.x + brickSize.height, y: brick34.position.y)
        brick35.name = "brick35"
        self.addChild(brick35)
        brick35.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick35.physicsBody?.affectedByGravity = false
        brick35.physicsBody?.isDynamic = false
        brick35.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick35.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick35.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick36.texture = ubTextureH20
        brick36.size = ubSize
        brick36.position = CGPoint(x: brick35.position.x + brickSize.height, y: brick35.position.y)
        brick36.name = "brick36"
        self.addChild(brick36)
        brick36.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick36.physicsBody?.affectedByGravity = false
        brick36.physicsBody?.isDynamic = false
        brick36.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick36.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick36.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick37.texture = ubTextureH20
        brick37.size = ubSize
        brick37.position = CGPoint(x: brick36.position.x + brickSize.height, y: brick36.position.y)
        brick37.name = "brick37"
        self.addChild(brick37)
        brick37.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick37.physicsBody?.affectedByGravity = false
        brick37.physicsBody?.isDynamic = false
        brick37.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick37.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick37.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick38.texture = ubTextureH20
        brick38.size = ubSize
        brick38.position = CGPoint(x: brick37.position.x + brickSize.height, y: brick37.position.y)
        brick38.name = "brick38"
        self.addChild(brick38)
        brick38.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick38.physicsBody?.affectedByGravity = false
        brick38.physicsBody?.isDynamic = false
        brick38.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick38.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick38.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick39.texture = ubTextureH20
        brick39.size = ubSize
        brick39.position = CGPoint(x: brick38.position.x + brickSize.height, y: brick38.position.y)
        brick39.name = "brick39"
        self.addChild(brick39)
        brick39.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick39.physicsBody?.affectedByGravity = false
        brick39.physicsBody?.isDynamic = false
        brick39.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick39.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick39.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick40.texture = ubTextureH20
        brick40.size = ubSize
        brick40.position = CGPoint(x: brick39.position.x + brickSize.height, y: brick39.position.y)
        brick40.name = "brick40"
        self.addChild(brick40)
        brick40.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick40.physicsBody?.affectedByGravity = false
        brick40.physicsBody?.isDynamic = false
        brick40.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick40.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick40.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick41.texture = ubTextureH20
        brick41.size = ubSize
        brick41.position = CGPoint(x: brick40.position.x + brickSize.height, y: brick40.position.y)
        brick41.name = "brick41"
        self.addChild(brick41)
        brick41.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick41.physicsBody?.affectedByGravity = false
        brick41.physicsBody?.isDynamic = false
        brick41.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick41.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick41.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        
        brick42.texture = ubTextureH20
        brick42.size = ubSize
        brick42.position = CGPoint(x: brick41.position.x + brickSize.height, y: brick41.position.y)
        brick42.name = "brick42"
        self.addChild(brick42)
        brick42.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick42.physicsBody?.affectedByGravity = false
        brick42.physicsBody?.isDynamic = false
        brick42.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick42.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick42.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick43.texture = ubTextureH20
        brick43.size = ubSize
        brick43.position = CGPoint(x: brick42.position.x + brickSize.height, y: brick42.position.y)
        brick43.name = "brick43"
        self.addChild(brick43)
        brick43.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick43.physicsBody?.affectedByGravity = false
        brick43.physicsBody?.isDynamic = false
        brick43.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick43.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick43.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick44.texture = ubTextureH20
        brick44.size = ubSize
        brick44.position = CGPoint(x: brick43.position.x + brickSize.height, y: brick43.position.y)
        brick44.name = "brick44"
        self.addChild(brick44)
        brick44.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick44.physicsBody?.affectedByGravity = false
        brick44.physicsBody?.isDynamic = false
        brick44.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick44.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick44.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick45.texture = brickTextureHealth4
        brick45.size = brickSize
        brick45.position = CGPoint(x: brick44.position.x, y: brick44.position.y - (brickSize.height * 1.35))
        brick45.name = "brick45"
        brick45.zRotation = 1.6
        self.addChild(brick45)
        brick45.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick45.physicsBody?.affectedByGravity = false
        brick45.physicsBody?.isDynamic = false
        brick45.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick45.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick45.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick46.texture = brickTextureHealth4
        brick46.size = brickSize
        brick46.position = CGPoint(x: brick45.position.x - brickSize.height, y: brick45.position.y)
        brick46.name = "brick46"
        brick46.zRotation = 1.6
        self.addChild(brick46)
        brick46.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick46.physicsBody?.affectedByGravity = false
        brick46.physicsBody?.isDynamic = false
        brick46.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick46.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick46.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick47.texture = brickTextureHealth4
        brick47.size = brickSize
        brick47.position = CGPoint(x: brick46.position.x - brickSize.height, y: brick46.position.y)
        brick47.name = "brick47"
        brick47.zRotation = 1.6
        self.addChild(brick47)
        brick47.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick47.physicsBody?.affectedByGravity = false
        brick47.physicsBody?.isDynamic = false
        brick47.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick47.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick47.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick48.texture = brickTextureHealth4
        brick48.size = brickSize
        brick48.position = CGPoint(x: brick47.position.x - brickSize.height, y: brick47.position.y)
        brick48.name = "brick48"
        brick48.zRotation = 1.6
        self.addChild(brick48)
        brick48.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick48.physicsBody?.affectedByGravity = false
        brick48.physicsBody?.isDynamic = false
        brick48.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick48.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick48.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick49.texture = brickTextureHealth4
        brick49.size = brickSize
        brick49.position = CGPoint(x: brick48.position.x - brickSize.height, y: brick48.position.y)
        brick49.name = "brick49"
        brick49.zRotation = 1.6
        self.addChild(brick49)
        brick49.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick49.physicsBody?.affectedByGravity = false
        brick49.physicsBody?.isDynamic = false
        brick49.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick49.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick49.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick50.texture = brickTextureHealth4
        brick50.size = brickSize
        brick50.position = CGPoint(x: brick49.position.x - brickSize.height, y: brick49.position.y)
        brick50.name = "bick50"
        brick50.zRotation = 1.6
        self.addChild(brick50)
        brick50.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick50.physicsBody?.affectedByGravity = false
        brick50.physicsBody?.isDynamic = false
        brick50.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick50.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick50.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick51.texture = brickTextureHealth4
        brick51.size = brickSize
        brick51.position = CGPoint(x: brick50.position.x - brickSize.height, y: brick50.position.y)
        brick51.name = "brick51"
        brick51.zRotation = 1.6
        self.addChild(brick51)
        brick51.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick51.physicsBody?.affectedByGravity = false
        brick51.physicsBody?.isDynamic = false
        brick51.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick51.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick51.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick52.texture = brickTextureHealth4
        brick52.size = brickSize
        brick52.position = CGPoint(x: brick51.position.x - brickSize.height, y: brick51.position.y)
        brick52.name = "brick52"
        brick52.zRotation = 1.6
        self.addChild(brick52)
        brick52.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick52.physicsBody?.affectedByGravity = false
        brick52.physicsBody?.isDynamic = false
        brick52.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick52.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick52.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick53.texture = brickTextureHealth4
        brick53.size = brickSize
        brick53.position = CGPoint(x: brick52.position.x - brickSize.height, y: brick52.position.y)
        brick53.name = "brick53"
        brick53.zRotation = 1.6
        self.addChild(brick53)
        brick53.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick53.physicsBody?.affectedByGravity = false
        brick53.physicsBody?.isDynamic = false
        brick53.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick53.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick53.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick54.texture = brickTextureHealth4
        brick54.size = brickSize
        brick54.position = CGPoint(x: brick53.position.x - brickSize.height, y: brick53.position.y)
        brick54.name = "brick54"
        brick54.zRotation = 1.6
        self.addChild(brick54)
        brick54.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick54.physicsBody?.affectedByGravity = false
        brick54.physicsBody?.isDynamic = false
        brick54.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick54.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick54.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick55.texture = brickTextureHealth4
        brick55.size = brickSize
        brick55.position = CGPoint(x: brick54.position.x - brickSize.height, y: brick54.position.y)
        brick55.name = "brick55"
        brick55.zRotation = 1.6
        self.addChild(brick55)
        brick55.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick55.physicsBody?.affectedByGravity = false
        brick55.physicsBody?.isDynamic = false
        brick55.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick55.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick55.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick56.texture = ubTextureH20
        brick56.size = ubSize
        brick56.position = CGPoint(x: brick55.position.x, y: brick55.position.y - (brickSize.height * 1.35))
        brick56.name = "brick56"
        self.addChild(brick56)
        brick56.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick56.physicsBody?.affectedByGravity = false
        brick56.physicsBody?.isDynamic = false
        brick56.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick56.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick56.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick57.texture = ubTextureH20
        brick57.size = ubSize
        brick57.position = CGPoint(x: brick56.position.x + brickSize.height, y: brick56.position.y)
        brick57.name = "brick57"
        self.addChild(brick57)
        brick57.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick57.physicsBody?.affectedByGravity = false
        brick57.physicsBody?.isDynamic = false
        brick57.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick57.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick57.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick58.texture = ubTextureH20
        brick58.size = ubSize
        brick58.position = CGPoint(x: brick57.position.x + brickSize.height, y: brick57.position.y)
        brick58.name = "brick58"
        self.addChild(brick58)
        brick58.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick58.physicsBody?.affectedByGravity = false
        brick58.physicsBody?.isDynamic = false
        brick58.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick58.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick58.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
       
        brick59.texture = ubTextureH20
        brick59.size = ubSize
        brick59.position = CGPoint(x: brick58.position.x + brickSize.height, y: brick58.position.y)
        brick59.name = "brick59"
        self.addChild(brick59)
        brick59.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick59.physicsBody?.affectedByGravity = false
        brick59.physicsBody?.isDynamic = false
        brick59.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick59.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick59.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick60.texture = ubTextureH20
        brick60.size = ubSize
        brick60.position = CGPoint(x: brick59.position.x + brickSize.height, y: brick59.position.y)
        brick60.name = "brick60"
        self.addChild(brick60)
        brick60.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick60.physicsBody?.affectedByGravity = false
        brick60.physicsBody?.isDynamic = false
        brick60.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick60.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick60.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick61.texture = ubTextureH20
        brick61.size = ubSize
        brick61.position = CGPoint(x: brick60.position.x + brickSize.height, y: brick60.position.y)
        brick61.name = "brick61"
        self.addChild(brick61)
        brick61.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick61.physicsBody?.affectedByGravity = false
        brick61.physicsBody?.isDynamic = false
        brick61.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick61.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick61.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick62.texture = ubTextureH20
        brick62.size = ubSize
        brick62.position = CGPoint(x: brick61.position.x + brickSize.height, y: brick61.position.y)
        brick62.name = "brick62"
        self.addChild(brick62)
        brick62.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick62.physicsBody?.affectedByGravity = false
        brick62.physicsBody?.isDynamic = false
        brick62.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick62.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick62.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick63.texture = ubTextureH20
        brick63.size = ubSize
        brick63.position = CGPoint(x: brick62.position.x + brickSize.height, y: brick62.position.y)
        brick63.name = "brick63"
        self.addChild(brick63)
        brick63.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick63.physicsBody?.affectedByGravity = false
        brick63.physicsBody?.isDynamic = false
        brick63.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick63.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick63.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick64.texture = ubTextureH20
        brick64.size = ubSize
        brick64.position = CGPoint(x: brick63.position.x + brickSize.height, y: brick63.position.y)
        brick64.name = "brick64"
        self.addChild(brick64)
        brick64.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick64.physicsBody?.affectedByGravity = false
        brick64.physicsBody?.isDynamic = false
        brick64.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick64.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick64.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick65.texture = ubTextureH20
        brick65.size = ubSize
        brick65.position = CGPoint(x: brick64.position.x + brickSize.height, y: brick64.position.y)
        brick65.name = "brick65"
        self.addChild(brick65)
        brick65.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick65.physicsBody?.affectedByGravity = false
        brick65.physicsBody?.isDynamic = false
        brick65.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick65.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick65.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick66.texture = ubTextureH20
        brick66.size = ubSize
        brick66.position = CGPoint(x: brick65.position.x + brickSize.height, y: brick65.position.y)
        brick66.name = "brick66"
        self.addChild(brick66)
        brick66.physicsBody = SKPhysicsBody(rectangleOf: ubSize)
        brick66.physicsBody?.affectedByGravity = false
        brick66.physicsBody?.isDynamic = false
        brick66.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick66.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick66.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
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
            if (firstBody.name == "ball") && (secondBody.name == "brick33") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick33") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick34") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick34") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick35") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick35") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick36") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick36") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick37") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick37") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick38") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick38") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick39") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick39") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick40") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick40") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick41") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick41") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick42") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick42") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick43") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick43") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick44") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick44") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick45") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick45") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick46") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick46") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick47") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick47") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick48") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick48") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick49") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick49") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick50") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick50") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick51") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick51") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick52") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick52") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick53") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick53") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick54") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick54") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick55") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick55") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick56") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick56") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick57") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick57") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick58") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick58") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick59") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick59") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick60") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick60") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick61") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick61") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick62") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick62") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick63") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick63") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick64") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick64") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick65") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick65") && (secondBody.name == "ball") {
                ballHitBrick(Ball: secondBody, Brick: firstBody)
            }
            if (firstBody.name == "ball") && (secondBody.name == "brick66") {
                ballHitBrick(Ball: firstBody, Brick: secondBody)
            } else if (firstBody.name == "brick66") && (secondBody.name == "ball") {
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
                let scene = ch1lvl55Scene(size: CGSize(width: 640, height: 1136))
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
                let scene = ch1lvl56Scene(size: CGSize(width: 640, height: 1136))
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
            /*brickCount -= 1
            brick.removeFromParent()
            Explosion.position = brick.position
            self.addChild(Explosion)
            self.run(explosionWait, completion: {
                Explosion.removeFromParent()
            })*/
        }
        if Brick.name == "brick2" {
            
        }
        if Brick.name == "brick3" {
            
        }
        if Brick.name == "brick4" {
            
        }
        if Brick.name == "brick5" {
            
        }
        if Brick.name == "brick6" {
            
        }
        if Brick.name == "brick7" {
            
        }
        if Brick.name == "brick8" {
            
        }
        if Brick.name == "brick9" {
            
        }
        if Brick.name == "brick10" {
            
        }
        if Brick.name == "brick11" {
            
        }
        if Brick.name == "brick12" {
            
        }
        if Brick.name == "brick13" {
            
        }
        if Brick.name == "brick14" {
            
        }
        if Brick.name == "brick15" {
            
        }
        if Brick.name == "brick16" {
            
        }
        if Brick.name == "brick17" {
            
        }
        if Brick.name == "brick18" {
            
        }
        if Brick.name == "brick19" {
            
        }
        if Brick.name == "brick20" {
            
        }
        if Brick.name == "brick21" {
            
        }
        if Brick.name == "brick22" {
            
        }
        if Brick.name == "brick23" {
            
        }
        if Brick.name == "brick24" {
            
        }
        if Brick.name == "brick25" {
            
        }
        if Brick.name == "brick26" {
            
        }
        if Brick.name == "brick27" {
            
        }
        if Brick.name == "brick28" {
            
        }
        if Brick.name == "brick29" {
            
        }
        if Brick.name == "brick30" {
            
        }
        if Brick.name == "brick31" {
            
        }
        if Brick.name == "brick32" {
            
        }
        if Brick.name == "brick33" {
            
        }
        if Brick.name == "brick34" {
            
        }
        if Brick.name == "brick35" {
            
        }
        if Brick.name == "brick36" {
            
        }
        if Brick.name == "brick37" {
            
        }
        if Brick.name == "brick38" {
            
        }
        if Brick.name == "brick39" {
            
        }
        if Brick.name == "brick40" {
            
        }
        if Brick.name == "brick41" {
            
        }
        if Brick.name == "brick42" {
            
        }
        if Brick.name == "brick43" {
            
        }
        if Brick.name == "brick44" {
            
        }
        if Brick.name == "brick45" {
            
        }
        if Brick.name == "brick46" {
            
        }
        if Brick.name == "brick47" {
            
        }
        if Brick.name == "brick48" {
            
        }
        if Brick.name == "brick49" {
            
        }
        if Brick.name == "brick50" {
            
        }
        if Brick.name == "brick51" {
            
        }
        if Brick.name == "brick52" {
            
        }
        if Brick.name == "brick53" {
            
        }
        if Brick.name == "brick54" {
            
        }
        if Brick.name == "brick55" {
            
        }
        if Brick.name == "brick56" {
            
        }
        if Brick.name == "brick57" {
            
        }
        if Brick.name == "brick58" {
            
        }
        if Brick.name == "brick59" {
            
        }
        if Brick.name == "brick60" {
            
        }
        if Brick.name == "brick61" {
            
        }
        if Brick.name == "brick62" {
            
        }
        if Brick.name == "brick63" {
            
        }
        if Brick.name == "brick64" {
            if brickLives[63] == 20 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH19
            } else if brickLives[63] == 19 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH18
            } else if brickLives[63] == 18 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH17
            } else if brickLives[63] == 17 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH16
            } else if brickLives[63] == 16 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH15
            } else if brickLives[63] == 15 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH14
            } else if brickLives[63] == 14 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH13
            } else if brickLives[63] == 13 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH12
            } else if brickLives[63] == 12 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH11
            } else if brickLives[63] == 11 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH10
            } else if brickLives[63] == 10 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH9
            } else if brickLives[63] == 9 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH8
            } else if brickLives[63] == 8 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH7
            } else if brickLives[63] == 7 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH6
            } else if brickLives[63] == 6 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH5
            } else if brickLives[63] == 5 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH4
            } else if brickLives[63] == 4 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH3
            } else if brickLives[63] == 3 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH2
            } else if brickLives[63] == 2 {
                brickLives[63] -= 1
                brick64.texture = ubTextureH1
            } else if brickLives[63] == 1 {
                brickCount -= 1
                brick.removeFromParent()
                Explosion.position = brick.position
                self.addChild(Explosion)
                self.run(explosionWait, completion: {
                    Explosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick65" {
            if brickLives[64] == 20 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH19
            } else if brickLives[64] == 19 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH18
            } else if brickLives[64] == 18 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH17
            } else if brickLives[64] == 17 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH16
            } else if brickLives[64] == 16 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH15
            } else if brickLives[64] == 15 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH14
            } else if brickLives[64] == 14 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH13
            } else if brickLives[64] == 13 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH12
            } else if brickLives[64] == 12 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH11
            } else if brickLives[64] == 11 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH10
            } else if brickLives[64] == 10 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH9
            } else if brickLives[64] == 9 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH8
            } else if brickLives[64] == 8 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH7
            } else if brickLives[64] == 7 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH6
            } else if brickLives[64] == 6 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH5
            } else if brickLives[64] == 5 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH4
            } else if brickLives[64] == 4 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH3
            } else if brickLives[64] == 3 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH2
            } else if brickLives[64] == 2 {
                brickLives[64] -= 1
                brick65.texture = ubTextureH1
            } else if brickLives[64] == 1 {
                brickCount -= 1
                brick65.removeFromParent()
                ubExplosion.position = brick65.position
                self.addChild(ubExplosion)
                self.run(explosionWait, completion: {
                    ubExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick66" {
            if brickLives[65] == 20 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH19
            } else if brickLives[65] == 19 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH18
            } else if brickLives[65] == 18 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH17
            } else if brickLives[65] == 17 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH16
            } else if brickLives[65] == 16 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH15
            } else if brickLives[65] == 15 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH14
            } else if brickLives[65] == 14 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH13
            } else if brickLives[65] == 13 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH12
            } else if brickLives[65] == 12 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH11
            } else if brickLives[65] == 11 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH10
            } else if brickLives[65] == 10 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH9
            } else if brickLives[65] == 9 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH8
            } else if brickLives[65] == 8 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH7
            } else if brickLives[65] == 7 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH6
            } else if brickLives[65] == 6 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH5
            } else if brickLives[65] == 5 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH4
            } else if brickLives[65] == 4 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH3
            } else if brickLives[65] == 3 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH2
            } else if brickLives[65] == 2 {
                brickLives[65] -= 1
                brick66.texture = ubTextureH1
            } else if brickLives[65] == 1 {
                brickCount -= 1
                brick66.removeFromParent()
                ubExplosion.position = brick66.position
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
            if ch1lvl56Unlocked == false {
                ch1lvl56Unlocked = true
                UserDefaults.standard.set(true, forKey: "ch1lvl56Unlocked")
                UserDefaults.standard.synchronize()
                continueBtnString = "ch1lvl56"
                UserDefaults.standard.set("ch1lvl56", forKey: "continueBtnString")
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
