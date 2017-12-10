//
//  ch1lvl33Scene.swift
//  Brickz
//
//  Created by Julian Cearley on 9/18/17.
//  Copyright © 2017 Julian Cearley. All rights reserved.
//

import UIKit
import SpriteKit

class ch1lvl33Scene: SKScene, SKPhysicsContactDelegate {
    
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
    
    var brickLives: Array = [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]
    
    let brickTextureHealth4 = SKTexture(imageNamed: "Brick1")
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
    
    let lvlLbl = SKLabelNode(fontNamed: "ChalkDuster")
    
    var brickCount = 56
    
    var ch1lvl34Unlocked  = UserDefaults.standard.bool(forKey: "ch1lvl34Unlocked")
    
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
        
        lvlLbl.text = "Level 33"
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
        
        brick1.texture = brickTextureHealth4
        brick1.size = brickSize
        brick1.position = CGPoint(x: self.frame.width / 2 - brickSize.width, y: self.frame.height / 3)
        brick1.name = "brick1"
        self.addChild(brick1)
        brick1.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick1.physicsBody?.affectedByGravity = false
        brick1.physicsBody?.isDynamic = false
        brick1.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick1.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick1.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick2.texture = brickTextureHealth4
        brick2.size = brickSize
        brick2.position = CGPoint(x: self.frame.width / 2 + brickSize.width, y: self.frame.height / 3)
        brick2.name = "brick2"
        self.addChild(brick2)
        brick2.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick2.physicsBody?.affectedByGravity = false
        brick2.physicsBody?.isDynamic = false
        brick2.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick2.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick2.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick3.texture = brickTextureHealth4
        brick3.size = brickSize
        brick3.position = CGPoint(x: brick1.position.x - (brickSize.width * 2), y: brick1.position.y)
        brick3.name = "brick3"
        self.addChild(brick3)
        brick3.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick3.physicsBody?.affectedByGravity = false
        brick3.physicsBody?.isDynamic = false
        brick3.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick3.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick3.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick4.texture = brickTextureHealth4
        brick4.size = brickSize
        brick4.position = CGPoint(x: brick2.position.x + (brickSize.width * 2), y: brick2.position.y)
        brick4.name = "brick4"
        self.addChild(brick4)
        brick4.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick4.physicsBody?.affectedByGravity = false
        brick4.physicsBody?.isDynamic = false
        brick4.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick4.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick4.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick5.texture = brickTextureHealth4
        brick5.size = brickSize
        brick5.position = CGPoint(x: brick1.position.x, y: brick1.position.y + brickSize.height)
        brick5.name = "brick5"
        self.addChild(brick5)
        brick5.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick5.physicsBody?.affectedByGravity = false
        brick5.physicsBody?.isDynamic = false
        brick5.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick5.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick5.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick6.texture = brickTextureHealth4
        brick6.size = brickSize
        brick6.position = CGPoint(x: brick5.position.x, y: brick5.position.y + brickSize.height)
        brick6.name = "brick6"
        self.addChild(brick6)
        brick6.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick6.physicsBody?.affectedByGravity = false
        brick6.physicsBody?.isDynamic = false
        brick6.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick6.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick6.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick7.texture = brickTextureHealth4
        brick7.size = brickSize
        brick7.position = CGPoint(x: brick6.position.x, y: brick6.position.y + brickSize.height)
        brick7.name = "brick7"
        self.addChild(brick7)
        brick7.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick7.physicsBody?.affectedByGravity = false
        brick7.physicsBody?.isDynamic = false
        brick7.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick7.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick7.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick8.texture = brickTextureHealth4
        brick8.size = brickSize
        brick8.position = CGPoint(x: brick7.position.x, y: brick7.position.y + brickSize.height)
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
        brick9.position = CGPoint(x: brick8.position.x, y: brick8.position.y + brickSize.height)
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
        brick10.position = CGPoint(x: brick9.position.x, y: brick9.position.y + brickSize.height)
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
        brick11.position = CGPoint(x: brick10.position.x, y: brick10.position.y + brickSize.height)
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
        brick12.position = CGPoint(x: brick11.position.x, y: brick11.position.y + brickSize.height)
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
        brick13.position = CGPoint(x: brick12.position.x, y: brick12.position.y + brickSize.height)
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
        brick14.position = CGPoint(x: brick13.position.x, y: brick13.position.y + brickSize.height)
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
        brick15.position = CGPoint(x: brick14.position.x, y: brick14.position.y + brickSize.height)
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
        brick16.position = CGPoint(x: brick15.position.x, y: brick15.position.y + brickSize.height)
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
        brick17.position = CGPoint(x: brick16.position.x, y: brick16.position.y + brickSize.height)
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
        brick18.position = CGPoint(x: brick2.position.x, y: brick2.position.y + brickSize.height)
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
        brick19.position = CGPoint(x: brick18.position.x, y: brick18.position.y + brickSize.height)
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
        brick20.position = CGPoint(x: brick19.position.x, y: brick19.position.y + brickSize.height)
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
        brick21.position = CGPoint(x: brick20.position.x, y: brick20.position.y + brickSize.height)
        brick21.name = "brick21"
        self.addChild(brick21)
        brick21.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick21.physicsBody?.affectedByGravity = false
        brick21.physicsBody?.isDynamic = false
        brick21.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick21.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick21.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick22.texture = brickTextureHealth4
        brick22.size = brickSize
        brick22.position = CGPoint(x: brick21.position.x, y: brick21.position.y + brickSize.height)
        brick22.name = "brick22"
        self.addChild(brick22)
        brick22.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick22.physicsBody?.affectedByGravity = false
        brick22.physicsBody?.isDynamic = false
        brick22.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick22.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick22.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick23.texture = brickTextureHealth4
        brick23.size = brickSize
        brick23.position = CGPoint(x: brick22.position.x, y: brick22.position.y + brickSize.height)
        brick23.name = "brick23"
        self.addChild(brick23)
        brick23.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick23.physicsBody?.affectedByGravity = false
        brick23.physicsBody?.isDynamic = false
        brick23.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick23.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick23.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick24.texture = brickTextureHealth4
        brick24.size = brickSize
        brick24.position = CGPoint(x: brick23.position.x, y: brick23.position.y + brickSize.height)
        brick24.name = "brick24"
        self.addChild(brick24)
        brick24.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick24.physicsBody?.affectedByGravity = false
        brick24.physicsBody?.isDynamic = false
        brick24.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick24.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick24.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick25.texture = brickTextureHealth4
        brick25.size = brickSize
        brick25.position = CGPoint(x: brick24.position.x, y: brick24.position.y + brickSize.height)
        brick25.name = "brick25"
        self.addChild(brick25)
        brick25.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick25.physicsBody?.affectedByGravity = false
        brick25.physicsBody?.isDynamic = false
        brick25.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick25.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick25.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick26.texture = brickTextureHealth4
        brick26.size = brickSize
        brick26.position = CGPoint(x: brick25.position.x, y: brick25.position.y + brickSize.height)
        brick26.name = "brick26"
        self.addChild(brick26)
        brick26.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick26.physicsBody?.affectedByGravity = false
        brick26.physicsBody?.isDynamic = false
        brick26.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick26.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick26.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick27.texture = brickTextureHealth4
        brick27.size = brickSize
        brick27.position = CGPoint(x: brick26.position.x, y: brick26.position.y + brickSize.height)
        brick27.name = "brick27"
        self.addChild(brick27)
        brick27.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick27.physicsBody?.affectedByGravity = false
        brick27.physicsBody?.isDynamic = false
        brick27.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick27.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick27.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick28.texture = brickTextureHealth4
        brick28.size = brickSize
        brick28.position = CGPoint(x: brick27.position.x, y: brick27.position.y + brickSize.height)
        brick28.name = "brick28"
        self.addChild(brick28)
        brick28.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick28.physicsBody?.affectedByGravity = false
        brick28.physicsBody?.isDynamic = false
        brick28.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick28.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick28.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick29.texture = brickTextureHealth4
        brick29.size = brickSize
        brick29.position = CGPoint(x: brick28.position.x, y: brick28.position.y + brickSize.height)
        brick29.name = "brick29"
        self.addChild(brick29)
        brick29.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick29.physicsBody?.affectedByGravity = false
        brick29.physicsBody?.isDynamic = false
        brick29.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick29.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick29.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick30.texture = brickTextureHealth4
        brick30.size = brickSize
        brick30.position = CGPoint(x: brick29.position.x, y: brick29.position.y + brickSize.height)
        brick30.name = "brick30"
        self.addChild(brick30)
        brick30.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick30.physicsBody?.affectedByGravity = false
        brick30.physicsBody?.isDynamic = false
        brick30.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick30.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick30.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick31.texture = brickTextureHealth4
        brick31.size = brickSize
        brick31.position = CGPoint(x: brick3.position.x, y: brick3.position.y + brickSize.height)
        brick31.name = "brick31"
        self.addChild(brick31)
        brick31.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick31.physicsBody?.affectedByGravity = false
        brick31.physicsBody?.isDynamic = false
        brick31.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick31.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick31.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick32.texture = brickTextureHealth4
        brick32.size = brickSize
        brick32.position = CGPoint(x: brick31.position.x, y: brick31.position.y + brickSize.height)
        brick32.name = "brick32"
        self.addChild(brick32)
        brick32.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick32.physicsBody?.affectedByGravity = false
        brick32.physicsBody?.isDynamic = false
        brick32.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick32.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick32.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick33.texture = brickTextureHealth4
        brick33.size = brickSize
        brick33.position = CGPoint(x: brick32.position.x, y: brick32.position.y + brickSize.height)
        brick33.name = "brick33"
        self.addChild(brick33)
        brick33.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick33.physicsBody?.affectedByGravity = false
        brick33.physicsBody?.isDynamic = false
        brick33.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick33.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick33.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick34.texture = brickTextureHealth4
        brick34.size = brickSize
        brick34.position = CGPoint(x: brick33.position.x, y: brick33.position.y + brickSize.height)
        brick34.name = "brick34"
        self.addChild(brick34)
        brick34.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick34.physicsBody?.affectedByGravity = false
        brick34.physicsBody?.isDynamic = false
        brick34.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick34.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick34.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick35.texture = brickTextureHealth4
        brick35.size = brickSize
        brick35.position = CGPoint(x: brick34.position.x, y: brick34.position.y + brickSize.height)
        brick35.name = "brick35"
        self.addChild(brick35)
        brick35.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick35.physicsBody?.affectedByGravity = false
        brick35.physicsBody?.isDynamic = false
        brick35.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick35.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick35.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick36.texture = brickTextureHealth4
        brick36.size = brickSize
        brick36.position = CGPoint(x: brick35.position.x, y: brick35.position.y + brickSize.height)
        brick36.name = "brick36"
        self.addChild(brick36)
        brick36.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick36.physicsBody?.affectedByGravity = false
        brick36.physicsBody?.isDynamic = false
        brick36.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick36.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick36.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick37.texture = brickTextureHealth4
        brick37.size = brickSize
        brick37.position = CGPoint(x: brick36.position.x, y: brick36.position.y + brickSize.height)
        brick37.name = "brick37"
        self.addChild(brick37)
        brick37.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick37.physicsBody?.affectedByGravity = false
        brick37.physicsBody?.isDynamic = false
        brick37.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick37.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick37.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick38.texture = brickTextureHealth4
        brick38.size = brickSize
        brick38.position = CGPoint(x: brick37.position.x, y: brick37.position.y + brickSize.height)
        brick38.name = "brick38"
        self.addChild(brick38)
        brick38.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick38.physicsBody?.affectedByGravity = false
        brick38.physicsBody?.isDynamic = false
        brick38.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick38.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick38.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick39.texture = brickTextureHealth4
        brick39.size = brickSize
        brick39.position = CGPoint(x: brick38.position.x, y: brick38.position.y + brickSize.height)
        brick39.name = "brick39"
        self.addChild(brick39)
        brick39.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick39.physicsBody?.affectedByGravity = false
        brick39.physicsBody?.isDynamic = false
        brick39.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick39.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick39.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick40.texture = brickTextureHealth4
        brick40.size = brickSize
        brick40.position = CGPoint(x: brick39.position.x, y: brick39.position.y + brickSize.height)
        brick40.name = "brick40"
        self.addChild(brick40)
        brick40.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick40.physicsBody?.affectedByGravity = false
        brick40.physicsBody?.isDynamic = false
        brick40.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick40.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick40.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick41.texture = brickTextureHealth4
        brick41.size = brickSize
        brick41.position = CGPoint(x: brick40.position.x, y: brick40.position.y + brickSize.height)
        brick41.name = "brick41"
        self.addChild(brick41)
        brick41.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick41.physicsBody?.affectedByGravity = false
        brick41.physicsBody?.isDynamic = false
        brick41.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick41.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick41.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick42.texture = brickTextureHealth4
        brick42.size = brickSize
        brick42.position = CGPoint(x: brick41.position.x, y: brick41.position.y + brickSize.height)
        brick42.name = "brick42"
        self.addChild(brick42)
        brick42.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick42.physicsBody?.affectedByGravity = false
        brick42.physicsBody?.isDynamic = false
        brick42.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick42.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick42.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick43.texture = brickTextureHealth4
        brick43.size = brickSize
        brick43.position = CGPoint(x: brick42.position.x, y: brick42.position.y + brickSize.height)
        brick43.name = "brick43"
        self.addChild(brick43)
        brick43.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick43.physicsBody?.affectedByGravity = false
        brick43.physicsBody?.isDynamic = false
        brick43.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick43.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick43.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick44.texture = brickTextureHealth4
        brick44.size = brickSize
        brick44.position = CGPoint(x: brick4.position.x, y: brick4.position.y + brickSize.height)
        brick44.name = "brick44"
        self.addChild(brick44)
        brick44.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick44.physicsBody?.affectedByGravity = false
        brick44.physicsBody?.isDynamic = false
        brick44.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick44.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick44.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick45.texture = brickTextureHealth4
        brick45.size = brickSize
        brick45.position = CGPoint(x: brick44.position.x, y: brick44.position.y + brickSize.height)
        brick45.name = "brick45"
        self.addChild(brick45)
        brick45.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick45.physicsBody?.affectedByGravity = false
        brick45.physicsBody?.isDynamic = false
        brick45.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick45.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick45.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick46.texture = brickTextureHealth4
        brick46.size = brickSize
        brick46.position = CGPoint(x: brick45.position.x, y: brick45.position.y + brickSize.height)
        brick46.name = "brick46"
        self.addChild(brick46)
        brick46.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick46.physicsBody?.affectedByGravity = false
        brick46.physicsBody?.isDynamic = false
        brick46.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick46.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick46.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick47.texture = brickTextureHealth4
        brick47.size = brickSize
        brick47.position = CGPoint(x: brick46.position.x, y: brick46.position.y + brickSize.height)
        brick47.name = "brick47"
        self.addChild(brick47)
        brick47.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick47.physicsBody?.affectedByGravity = false
        brick47.physicsBody?.isDynamic = false
        brick47.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick47.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick47.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick48.texture = brickTextureHealth4
        brick48.size = brickSize
        brick48.position = CGPoint(x: brick47.position.x, y: brick47.position.y + brickSize.height)
        brick48.name = "brick48"
        self.addChild(brick48)
        brick48.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick48.physicsBody?.affectedByGravity = false
        brick48.physicsBody?.isDynamic = false
        brick48.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick48.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick48.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick49.texture = brickTextureHealth4
        brick49.size = brickSize
        brick49.position = CGPoint(x: brick48.position.x, y: brick48.position.y + brickSize.height)
        brick49.name = "brick49"
        self.addChild(brick49)
        brick49.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick49.physicsBody?.affectedByGravity = false
        brick49.physicsBody?.isDynamic = false
        brick49.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick49.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick49.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick50.texture = brickTextureHealth4
        brick50.size = brickSize
        brick50.position = CGPoint(x: brick49.position.x, y: brick49.position.y + brickSize.height)
        brick50.name = "brick50"
        self.addChild(brick50)
        brick50.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick50.physicsBody?.affectedByGravity = false
        brick50.physicsBody?.isDynamic = false
        brick50.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick50.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick50.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick51.texture = brickTextureHealth4
        brick51.size = brickSize
        brick51.position = CGPoint(x: brick50.position.x, y: brick50.position.y + brickSize.height)
        brick51.name = "brick51"
        self.addChild(brick51)
        brick51.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick51.physicsBody?.affectedByGravity = false
        brick51.physicsBody?.isDynamic = false
        brick51.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick51.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick51.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick52.texture = brickTextureHealth4
        brick52.size = brickSize
        brick52.position = CGPoint(x: brick51.position.x, y: brick51.position.y + brickSize.height)
        brick52.name = "brick52"
        self.addChild(brick52)
        brick52.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick52.physicsBody?.affectedByGravity = false
        brick52.physicsBody?.isDynamic = false
        brick52.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick52.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick52.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick53.texture = brickTextureHealth4
        brick53.size = brickSize
        brick53.position = CGPoint(x: brick52.position.x, y: brick52.position.y + brickSize.height)
        brick53.name = "brick53"
        self.addChild(brick53)
        brick53.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick53.physicsBody?.affectedByGravity = false
        brick53.physicsBody?.isDynamic = false
        brick53.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick53.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick53.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick54.texture = brickTextureHealth4
        brick54.size = brickSize
        brick54.position = CGPoint(x: brick53.position.x, y: brick53.position.y + brickSize.height)
        brick54.name = "brick54"
        self.addChild(brick54)
        brick54.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick54.physicsBody?.affectedByGravity = false
        brick54.physicsBody?.isDynamic = false
        brick54.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick54.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick54.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick55.texture = brickTextureHealth4
        brick55.size = brickSize
        brick55.position = CGPoint(x: brick54.position.x, y: brick54.position.y + brickSize.height)
        brick55.name = "brick55"
        self.addChild(brick55)
        brick55.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick55.physicsBody?.affectedByGravity = false
        brick55.physicsBody?.isDynamic = false
        brick55.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick55.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick55.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
        brick56.texture = brickTextureHealth4
        brick56.size = brickSize
        brick56.position = CGPoint(x: brick55.position.x, y: brick55.position.y + brickSize.height)
        brick56.name = "brick56"
        self.addChild(brick56)
        brick56.physicsBody = SKPhysicsBody(rectangleOf: brickSize)
        brick56.physicsBody?.affectedByGravity = false
        brick56.physicsBody?.isDynamic = false
        brick56.physicsBody?.categoryBitMask = PhysicsCategory.Brick
        brick56.physicsBody?.collisionBitMask = PhysicsCategory.Ball
        brick56.physicsBody?.contactTestBitMask = PhysicsCategory.Ball
        
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
                let scene = ch1lvl33Scene(size: CGSize(width: 640, height: 1136))
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
                let scene = ch1lvl34Scene(size: CGSize(width: 640, height: 1136))
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
            if brickLives[0] == 4 {
                brickLives[0] -= 1
                brick1.texture = brickTextureHealth3
            } else if brickLives[0] == 3 {
                brickLives[0] -= 1
                brick1.texture = brickTextureHealth2
            } else if brickLives[0] == 2 {
                brickLives[0] -= 1
                brick1.texture = brickTextureHealth1
            } else if brickLives[0] == 1 {
                brickCount -= 1
                brick1.removeFromParent()
                brickExplosion.position = brick1.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick2" {
            if brickLives[1] == 4 {
                brickLives[1] -= 1
                brick2.texture = brickTextureHealth3
            } else if brickLives[1] == 3 {
                brickLives[1] -= 1
                brick2.texture = brickTextureHealth2
            } else if brickLives[1] == 2 {
                brickLives[1] -= 1
                brick2.texture = brickTextureHealth1
            } else if brickLives[1] == 1{
                brickCount -= 1
                brick2.removeFromParent()
                brickExplosion.position = brick2.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick3" {
            if brickLives[2] == 4 {
                brickLives[2] -= 1
                brick3.texture = brickTextureHealth3
            } else if brickLives[2] == 3 {
                brickLives[2] -= 1
                brick3.texture = brickTextureHealth2
            } else if brickLives[2] == 2 {
                brickLives[2] -= 1
                brick3.texture = brickTextureHealth1
            } else if brickLives[2] == 1 {
                brickCount -= 1
                brick3.removeFromParent()
                brickExplosion.position = brick3.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick4" {
            if brickLives[3] == 4 {
                brickLives[3] -= 1
                brick4.texture = brickTextureHealth3
            } else if brickLives[3] == 3 {
                brickLives[3] -= 1
                brick4.texture = brickTextureHealth2
            } else if brickLives[3] == 2 {
                brickLives[3] -= 1
                brick4.texture = brickTextureHealth1
            } else if brickLives[3] == 1 {
                brickCount -= 1
                brick4.removeFromParent()
                brickExplosion.position = brick4.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick5" {
            if brickLives[4] == 4 {
                brickLives[4] -= 1
                brick5.texture = brickTextureHealth3
            } else if brickLives[4] == 3 {
                brickLives[4] -= 1
                brick5.texture = brickTextureHealth2
            } else if brickLives[4] == 2 {
                brickLives[4] -= 1
                brick5.texture = brickTextureHealth1
            } else if brickLives[4] == 1 {
                brickCount -= 1
                brick5.removeFromParent()
                brickExplosion.position = brick5.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick6" {
            if brickLives[5] == 4 {
                brickLives[5] -= 1
                brick6.texture = brickTextureHealth3
            } else if brickLives[5] == 3 {
                brickLives[5] -= 1
                brick6.texture = brickTextureHealth2
            } else if brickLives[5] == 2 {
                brickLives[5] -= 1
                brick6.texture = brickTextureHealth1
            } else if brickLives[5] == 1 {
                brickCount -= 1
                brick6.removeFromParent()
                brickExplosion.position = brick6.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick7" {
            if brickLives[6] == 4 {
                brickLives[6] -= 1
                brick7.texture = brickTextureHealth3
            } else if brickLives[6] == 3 {
                brickLives[6] -= 1
                brick7.texture = brickTextureHealth2
            } else if brickLives[6] == 2 {
                brickLives[6] -= 1
                brick7.texture = brickTextureHealth1
            } else if brickLives[6] == 1 {
                brickCount -= 1
                brick7.removeFromParent()
                brickExplosion.position = brick7.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            } else {
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
            if brickLives[21] == 4 {
                brickLives[21] -= 1
                brick22.texture = brickTextureHealth3
            } else if brickLives[21] == 3 {
                brickLives[21] -= 1
                brick22.texture = brickTextureHealth2
            } else if brickLives[21] == 2 {
                brickLives[21] -= 1
                brick22.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick22.removeFromParent()
                brickExplosion.position = brick22.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick23" {
            if brickLives[22] == 4 {
                brickLives[22] -= 1
                brick23.texture = brickTextureHealth3
            } else if brickLives[22] == 3 {
                brickLives[22] -= 1
                brick23.texture = brickTextureHealth2
            } else if brickLives[22] == 2 {
                brickLives[22] -= 1
                brick23.texture = brickTextureHealth1
            } else {
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
            if brickLives[23] == 4 {
                brickLives[23] -= 1
                brick24.texture = brickTextureHealth3
            } else if brickLives[23] == 3 {
                brickLives[23] -= 1
                brick24.texture = brickTextureHealth2
            } else if brickLives[23] == 2 {
                brickLives[23] -= 1
                brick24.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick24.removeFromParent()
                brickExplosion.position = brick24.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick25" {
            if brickLives[24] == 4 {
                brickLives[24] -= 1
                brick25.texture = brickTextureHealth3
            } else if brickLives[24] == 3 {
                brickLives[24] -= 1
                brick25.texture = brickTextureHealth2
            } else if brickLives[24] == 2 {
                brickLives[24] -= 1
                brick25.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick25.removeFromParent()
                brickExplosion.position = brick25.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick26" {
            if brickLives[25] == 4 {
                brickLives[25] -= 1
                brick26.texture = brickTextureHealth3
            } else if brickLives[25] == 3 {
                brickLives[25] -= 1
                brick26.texture = brickTextureHealth2
            } else if brickLives[25] == 2 {
                brickLives[25] -= 1
                brick26.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick26.removeFromParent()
                brickExplosion.position = brick26.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick27" {
            if brickLives[26] == 4 {
                brickLives[26] -= 1
                brick27.texture = brickTextureHealth3
            } else if brickLives[26] == 3 {
                brickLives[26] -= 1
                brick27.texture = brickTextureHealth2
            } else if brickLives[26] == 2 {
                brickLives[26] -= 1
                brick27.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick27.removeFromParent()
                brickExplosion.position = brick27.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick28" {
            if brickLives[27] == 4 {
                brickLives[27] -= 1
                brick28.texture = brickTextureHealth3
            } else if brickLives[27] == 3 {
                brickLives[27] -= 1
                brick28.texture = brickTextureHealth2
            } else if brickLives[27] == 2 {
                brickLives[27] -= 1
                brick28.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick28.removeFromParent()
                brickExplosion.position = brick28.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick29" {
            if brickLives[28] == 4 {
                brickLives[28] -= 1
                brick29.texture = brickTextureHealth3
            } else if brickLives[28] == 3 {
                brickLives[28] -= 1
                brick29.texture = brickTextureHealth2
            } else if brickLives[28] == 2 {
                brickLives[28] -= 1
                brick29.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick29.removeFromParent()
                brickExplosion.position = brick29.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick30" {
            if brickLives[29] == 4 {
                brickLives[29] -= 1
                brick30.texture = brickTextureHealth3
            } else if brickLives[29] == 3 {
                brickLives[29] -= 1
                brick30.texture = brickTextureHealth2
            } else if brickLives[29] == 2 {
                brickLives[29] -= 1
                brick30.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick30.removeFromParent()
                brickExplosion.position = brick30.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick31" {
            if brickLives[30] == 4 {
                brickLives[30] -= 1
                brick31.texture = brickTextureHealth3
            } else if brickLives[30] == 3 {
                brickLives[30] -= 1
                brick31.texture = brickTextureHealth2
            } else if brickLives[30] == 2 {
                brickLives[30] -= 1
                brick31.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick31.removeFromParent()
                brickExplosion.position = brick31.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick32" {
            if brickLives[31] == 4 {
                brickLives[31] -= 1
                brick32.texture = brickTextureHealth3
            } else if brickLives[31] == 3 {
                brickLives[31] -= 1
                brick32.texture = brickTextureHealth2
            } else if brickLives[31] == 2 {
                brickLives[31] -= 1
                brick32.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick32.removeFromParent()
                brickExplosion.position = brick32.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick33" {
            if brickLives[32] == 4 {
                brickLives[32] -= 1
                brick33.texture = brickTextureHealth3
            } else if brickLives[32] == 3 {
                brickLives[32] -= 1
                brick33.texture = brickTextureHealth2
            } else if brickLives[32] == 2 {
                brickLives[32] -= 1
                brick33.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick33.removeFromParent()
                brickExplosion.position = brick33.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick34" {
            if brickLives[33] == 4 {
                brickLives[33] -= 1
                brick34.texture = brickTextureHealth3
            } else if brickLives[33] == 3 {
                brickLives[33] -= 1
                brick34.texture = brickTextureHealth2
            } else if brickLives[33] == 2 {
                brickLives[33] -= 1
                brick34.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick34.removeFromParent()
                brickExplosion.position = brick34.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick35" {
            if brickLives[34] == 4 {
                brickLives[34] -= 1
                brick35.texture = brickTextureHealth3
            } else if brickLives[34] == 3 {
                brickLives[34] -= 1
                brick35.texture = brickTextureHealth2
            } else if brickLives[34] == 2 {
                brickLives[34] -= 1
                brick35.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick35.removeFromParent()
                brickExplosion.position = brick35.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick36" {
            if brickLives[35] == 4 {
                brickLives[35] -= 1
                brick36.texture = brickTextureHealth3
            } else if brickLives[35] == 3 {
                brickLives[35] -= 1
                brick36.texture = brickTextureHealth2
            } else if brickLives[35] == 2 {
                brickLives[35] -= 1
                brick36.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick36.removeFromParent()
                brickExplosion.position = brick36.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick37" {
            if brickLives[36] == 4 {
                brickLives[36] -= 1
                brick37.texture = brickTextureHealth3
            } else if brickLives[36] == 3 {
                brickLives[36] -= 1
                brick37.texture = brickTextureHealth2
            } else if brickLives[36] == 2 {
                brickLives[36] -= 1
                brick37.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick37.removeFromParent()
                brickExplosion.position = brick37.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick38" {
            if brickLives[37] == 4 {
                brickLives[37] -= 1
                brick38.texture = brickTextureHealth3
            } else if brickLives[37] == 3 {
                brickLives[37] -= 1
                brick38.texture = brickTextureHealth2
            } else if brickLives[37] == 2 {
                brickLives[37] -= 1
                brick38.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick38.removeFromParent()
                brickExplosion.position = brick38.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick39" {
            if brickLives[38] == 4 {
                brickLives[38] -= 1
                brick39.texture = brickTextureHealth3
            } else if brickLives[38] == 3 {
                brickLives[38] -= 1
                brick39.texture = brickTextureHealth2
            } else if brickLives[38] == 2 {
                brickLives[38] -= 1
                brick39.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick39.removeFromParent()
                brickExplosion.position = brick39.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick40" {
            if brickLives[39] == 4 {
                brickLives[39] -= 1
                brick40.texture = brickTextureHealth3
            } else if brickLives[39] == 3 {
                brickLives[39] -= 1
                brick40.texture = brickTextureHealth2
            } else if brickLives[39] == 2 {
                brickLives[39] -= 1
                brick40.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick40.removeFromParent()
                brickExplosion.position = brick40.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick41" {
            if brickLives[40] == 4 {
                brickLives[40] -= 1
                brick41.texture = brickTextureHealth3
            } else if brickLives[40] == 3 {
                brickLives[40] -= 1
                brick41.texture = brickTextureHealth2
            } else if brickLives[40] == 2 {
                brickLives[40] -= 1
                brick41.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick41.removeFromParent()
                brickExplosion.position = brick41.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick42" {
            if brickLives[41] == 4 {
                brickLives[41] -= 1
                brick42.texture = brickTextureHealth3
            } else if brickLives[41] == 3 {
                brickLives[41] -= 1
                brick42.texture = brickTextureHealth2
            } else if brickLives[41] == 2 {
                brickLives[41] -= 1
                brick42.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick42.removeFromParent()
                brickExplosion.position = brick42.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick43" {
            if brickLives[42] == 4 {
                brickLives[42] -= 1
                brick43.texture = brickTextureHealth3
            } else if brickLives[42] == 3 {
                brickLives[42] -= 1
                brick43.texture = brickTextureHealth2
            } else if brickLives[42] == 2 {
                brickLives[42] -= 1
                brick43.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick43.removeFromParent()
                brickExplosion.position = brick43.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick44" {
            if brickLives[43] == 4 {
                brickLives[43] -= 1
                brick44.texture = brickTextureHealth3
            } else if brickLives[43] == 3 {
                brickLives[43] -= 1
                brick44.texture = brickTextureHealth2
            } else if brickLives[43] == 2 {
                brickLives[43] -= 1
                brick44.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick44.removeFromParent()
                brickExplosion.position = brick44.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick45" {
            if brickLives[44] == 4 {
                brickLives[44] -= 1
                brick45.texture = brickTextureHealth3
            } else if brickLives[44] == 3 {
                brickLives[44] -= 1
                brick45.texture = brickTextureHealth2
            } else if brickLives[44] == 2 {
                brickLives[44] -= 1
                brick45.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick45.removeFromParent()
                brickExplosion.position = brick45.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick46" {
            if brickLives[45] == 4 {
                brickLives[45] -= 1
                brick46.texture = brickTextureHealth3
            } else if brickLives[45] == 3 {
                brickLives[45] -= 1
                brick46.texture = brickTextureHealth2
            } else if brickLives[45] == 2 {
                brickLives[45] -= 1
                brick46.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick46.removeFromParent()
                brickExplosion.position = brick46.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick47" {
            if brickLives[46] == 4 {
                brickLives[46] -= 1
                brick47.texture = brickTextureHealth3
            } else if brickLives[46] == 3 {
                brickLives[46] -= 1
                brick47.texture = brickTextureHealth2
            } else if brickLives[46] == 2 {
                brickLives[46] -= 1
                brick47.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick47.removeFromParent()
                brickExplosion.position = brick47.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick48" {
            if brickLives[47] == 4 {
                brickLives[47] -= 1
                brick48.texture = brickTextureHealth3
            } else if brickLives[47] == 3 {
                brickLives[47] -= 1
                brick48.texture = brickTextureHealth2
            } else if brickLives[47] == 2 {
                brickLives[47] -= 1
                brick48.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick48.removeFromParent()
                brickExplosion.position = brick48.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick49" {
            if brickLives[48] == 4 {
                brickLives[48] -= 1
                brick49.texture = brickTextureHealth3
            } else if brickLives[48] == 3 {
                brickLives[48] -= 1
                brick49.texture = brickTextureHealth2
            } else if brickLives[48] == 2 {
                brickLives[49] -= 1
                brick49.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick49.removeFromParent()
                brickExplosion.position = brick49.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick50" {
            if brickLives[49] == 4 {
                brickLives[49] -= 1
                brick50.texture = brickTextureHealth3
            } else if brickLives[49] == 3 {
                brickLives[49] -= 1
                brick50.texture = brickTextureHealth2
            } else if brickLives[49] == 2 {
                brickLives[49] -= 1
                brick50.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick50.removeFromParent()
                brickExplosion.position = brick50.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick51" {
            if brickLives[50] == 4 {
                brickLives[50] -= 1
                brick51.texture = brickTextureHealth3
            } else if brickLives[50] == 3 {
                brickLives[50] -= 1
                brick51.texture = brickTextureHealth2
            } else if brickLives[50] == 2 {
                brickLives[50] -= 1
                brick51.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick51.removeFromParent()
                brickExplosion.position = brick51.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick52" {
            if brickLives[51] == 4 {
                brickLives[51] -= 1
                brick52.texture = brickTextureHealth3
            } else if brickLives[51] == 3 {
                brickLives[51] -= 1
                brick52.texture = brickTextureHealth2
            } else if brickLives[51] == 2 {
                brickLives[51] -= 1
                brick52.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick52.removeFromParent()
                brickExplosion.position = brick52.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick53" {
            if brickLives[52] == 4 {
                brickLives[52] -= 1
                brick53.texture = brickTextureHealth3
            } else if brickLives[52] == 3 {
                brickLives[52] -= 1
                brick53.texture = brickTextureHealth2
            } else if brickLives[52] == 2 {
                brickLives[52] -= 1
                brick53.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick53.removeFromParent()
                brickExplosion.position = brick53.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick54" {
            if brickLives[53] == 4 {
                brickLives[53] -= 1
                brick54.texture = brickTextureHealth3
            } else if brickLives[53] == 3 {
                brickLives[53] -= 1
                brick54.texture = brickTextureHealth2
            } else if brickLives[53] == 2 {
                brickLives[53] -= 1
                brick54.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick54.removeFromParent()
                brickExplosion.position = brick54.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick55" {
            if brickLives[54] == 4 {
                brickLives[54] -= 1
                brick55.texture = brickTextureHealth3
            } else if brickLives[54] == 3 {
                brickLives[54] -= 1
                brick55.texture = brickTextureHealth2
            } else if brickLives[54] == 2 {
                brickLives[54] -= 1
                brick55.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick55.removeFromParent()
                brickExplosion.position = brick55.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick56" {
            if brickLives[55] == 4 {
                brickLives[55] -= 1
                brick56.texture = brickTextureHealth3
            } else if brickLives[55] == 3 {
                brickLives[55] -= 1
                brick56.texture = brickTextureHealth2
            } else if brickLives[55] == 2 {
                brickLives[55] -= 1
                brick56.texture = brickTextureHealth1
            } else {
                brickCount -= 1
                brick56.removeFromParent()
                brickExplosion.position = brick56.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
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
            if ch1lvl34Unlocked == false {
                ch1lvl34Unlocked = true
                UserDefaults.standard.set(true, forKey: "ch1lvl34Unlocked")
                UserDefaults.standard.synchronize()
                continueBtnString = "ch1lvl34"
                UserDefaults.standard.set("ch1lvl34", forKey: "continueBtnString")
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
