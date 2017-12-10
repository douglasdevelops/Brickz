//
//  ch1lvl1Scene.swift
//  Brickz
//
//  Created by Julian Cearley on 9/11/17.
//  Copyright © 2017 Julian Cearley. All rights reserved.
//

import UIKit
import SpriteKit

class ch1lvl1Scene: SKScene, SKPhysicsContactDelegate {
    
    // first tap will shoot the ball and then you will move the paddle as needed after 
    // max brick health = 4
    
    // store will have unlock all levels for 1$
    // ball skins also
    
    //left off making pause btn work so there is the retry and menu btn and also the continue btn to un pause the game
    // also need to go through and make sure all bricks fade out when chaning scenes in the btn touches endeds
    
    let leftBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let rightBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let topBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    let bottomBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    
    let brick1 = SKSpriteNode(imageNamed: "Brick4")
    var brick1Life = 1
    let brick2 = SKSpriteNode(imageNamed: "Brick4")
    var brick2Life = 1
    let brick3 = SKSpriteNode(imageNamed: "Brick4")
    var brick3Life = 1
    
    let paddle = SKSpriteNode(imageNamed: "Paddle")
    var ballTexture = SKTexture(imageNamed: "Ball")
    let ball = SKSpriteNode()
    
    var gameStarted = false
    var gameOver = false
    
    var score = 0
    let scoreLbl = SKLabelNode(fontNamed: "ChalkDuster")
    
    let lvlLbl = SKLabelNode(fontNamed: "ChalkDuster")
    
    var brickCount = 3
    
    var ch1lvl2Unlocked  = UserDefaults.standard.bool(forKey: "ch1lvl2Unlocked")
    
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
    var startTime = 0.0
    let timeLbl = SKLabelNode(fontNamed: "ChalkDuster")
    var timeTimer = Timer()
    
    var continueBtnString = UserDefaults.standard.string(forKey: "continueBtnString")
    
    // left off adding in timer 
    // need to add highscores later 
    
    // var best timer
    // var highscore
    
    let pauseBtn = SKSpriteNode(imageNamed: "pauseImg")
    
    let continueBtn = SKSpriteNode()
    let continueBtnUpTexture = SKTexture(imageNamed: "ContinueBtnUpImg")
    let continueBtnDownTexture = SKTexture(imageNamed: "ContinueBtnDownImg")
    
    let gameOverLbl = SKSpriteNode(imageNamed: "gameOverImg")
    
    let tapBtn = SKSpriteNode()
    var tap1 = SKTexture(imageNamed: "tap")
    var tap2 = SKTexture(imageNamed: "tapTick")
    
    var tapTimer = Timer()
    var tapMoveTimer = Timer()
    
    let tutLbl1 = SKLabelNode(fontNamed: "ChalkDuster")
    let tutLbl2 = SKLabelNode(fontNamed: "ChalkDuster")
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0, y: 0)
        self.backgroundColor = SKColor.lightGray
        self.physicsWorld.contactDelegate = self
        
        let brickSize = CGSize(width: (self.frame.width / 7) / 1.1, height: (self.frame.width / 12) / 1.1)
        
            tutLbl1.text =  "Tap where you would"
            tutLbl1.fontSize = self.frame.width / 18
            tutLbl1.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.4)
            self.addChild(tutLbl1)
            
            tutLbl2.text =  "like to launch the ball!"
            tutLbl2.fontSize = self.frame.width / 18
            tutLbl2.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.8)
            self.addChild(tutLbl2)
            
            tapBtn.texture = tap1
            tapBtn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            tapBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.6)
            self.addChild(tapBtn)
            
            tapTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.fingerTap), userInfo: nil, repeats: true)
            tapMove()
            tapMoveTimer = Timer.scheduledTimer(timeInterval: 8, target: self, selector: #selector(self.tapMove), userInfo: nil, repeats: true)
        
        gameOverLbl.size = CGSize(width: self.frame.width / 2, height: self.frame.height / 12)
        gameOverLbl.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.3)
        gameOverLbl.zPosition = 2
        gameOverLbl.alpha = 0
        self.addChild(gameOverLbl)
        
        lvlLbl.text = "Level 1"
        lvlLbl.fontSize = self.frame.width / 8
        lvlLbl.fontColor = SKColor.white
        lvlLbl.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        lvlLbl.zPosition = 5
        self.addChild(lvlLbl)
        
        pauseBtn.size = CGSize(width: self.frame.width / 12, height: self.frame.width / 12)
        pauseBtn.position = CGPoint(x: self.frame.width - self.frame.width / 15, y: self.frame.height - self.frame.width / 15)
        pauseBtn.name = "pauseBtn"
        self.addChild(pauseBtn)
        
        timeLbl.text = "\(time)"
        timeLbl.fontSize = self.frame.width / 15
        timeLbl.fontColor = SKColor.white
        timeLbl.position = CGPoint(x: 0 + (self.frame.width / 20), y: self.frame.height - (self.frame.width / 13))
        timeLbl.horizontalAlignmentMode = .left
        self.addChild(timeLbl)
        
        continueBtn.texture = continueBtnUpTexture
        continueBtn.size = CGSize(width: self.frame.width / 2.5, height: self.frame.height / 10)
        continueBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        continueBtn.name = "continueBtn"
        continueBtn.alpha = 0
        continueBtn.zPosition = 2
        self.addChild(continueBtn)
        
        menuBtn.texture = menuUpTexture
        menuBtn.size = CGSize(width: self.frame.width / 2.5, height: self.frame.height / 10)
        menuBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.2)
        menuBtn.name = "menuBtn"
        menuBtn.alpha = 0
        menuBtn.zPosition = 2
        self.addChild(menuBtn)
        
        retryBtn.texture = retryUpTexture
        retryBtn.size = CGSize(width: self.frame.width / 2.5, height: self.frame.height / 10)
        retryBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.6)
        retryBtn.alpha = 0
        retryBtn.name = "retryBtn"
        retryBtn.zPosition = 2
        self.addChild(retryBtn)
        
        nextBtn.texture = nextUpTexture
        nextBtn.size = CGSize(width: self.frame.width / 2.5, height: self.frame.height / 10)
        nextBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 3.5)
        nextBtn.alpha = 0
        nextBtn.name = "nextBtn"
        nextBtn.zPosition = 2
        self.addChild(nextBtn)
        
        scoreLbl.text = "\(score)"
        scoreLbl.fontSize = self.frame.width / 8
        scoreLbl.fontColor = SKColor.white
        scoreLbl.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.2)
        self.addChild(scoreLbl)
        
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
        
        brick1.size = brickSize
        brick1.position = CGPoint(x: self.frame.width / 5, y: self.frame.height / 1.3)
        brick1.name = "brick1"
        self.addChild(brick1)
        brick1.physicsBody = SKPhysicsBody(rectangleOf: brick1.size)
        brick1.physicsBody?.isDynamic = false
        brick1.physicsBody?.affectedByGravity = false
        
        brick2.size = brickSize
        brick2.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.3)
        brick2.name = "brick2"
        self.addChild(brick2)
        brick2.physicsBody = SKPhysicsBody(rectangleOf: brick2.size)
        brick2.physicsBody?.isDynamic = false
        brick2.physicsBody?.affectedByGravity = false
        
        brick3.size = brickSize
        brick3.position = CGPoint(x: self.frame.width - (self.frame.width / 5), y: self.frame.height / 1.3)
        brick3.name = "brick3"
        self.addChild(brick3)
        brick3.physicsBody = SKPhysicsBody(rectangleOf: brick3.size)
        brick3.physicsBody?.isDynamic = false
        brick3.physicsBody?.affectedByGravity = false
        
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
        
        if gameStarted == true  && gameOver == false && touchedNode.name != "continueBtn" {
                
                paddle.run(SKAction.moveTo(x: location.x, duration: 0.05))
                
            
        } else if gameStarted == false && touchedNode.name != "continueBtn" {
            gameStarted = true
            // launch the ball
            startTime = Date().timeIntervalSinceReferenceDate
            timeTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.keepTime), userInfo: nil, repeats: true)
            
            tapBtn.removeAllActions()
            tapBtn.run(fadeOut)
            tutLbl1.run(fadeOut)
            tutLbl2.run(fadeOut)
            
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
            
            if touchedNode.name == "continueBtn" {
                if gameOver == false {
                    self.isPaused = false
                    timeTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.keepTime), userInfo: nil, repeats: true)
                }
            }
            if touchedNode.name == "nextBtn" {
                nextBtn.texture = nextDownTexture
            }
            if touchedNode.name == "retryBtn" {
                retryBtn.texture = retryDownTexture
            }
            if touchedNode.name == "menuBtn" {
                menuBtn.texture = menuDownTexture
            }
            if touchedNode.name == "pauseBtn" {
                self.isPaused = true
                timeTimer.invalidate()
                
                self.continueBtn.alpha = 1
                UIView.animate(withDuration: 0.5, animations: {
                    if self.ch1lvl2Unlocked == true {
                        self.continueBtn.alpha = 1
                    } else {
                        
                    }
                })
            }
        
    }
}
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if touchedNode.name == "nextBtn" {
            nextBtn.texture = nextUpTexture
            scoreLbl.run(fadeOut)
            paddle.run(fadeOut)
            retryBtn.run(fadeOut)
            menuBtn.run(fadeOut)
            brick1.run(fadeOut)
            brick2.run(fadeOut)
            brick3.run(fadeOut)
            nextBtn.run(fadeOut, completion: {
                let scene = ch1lvl2Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        if touchedNode.name == "menuBtn" {
            menuBtn.texture = menuUpTexture
            nextBtn.texture = nextUpTexture
            scoreLbl.run(fadeOut)
            paddle.run(fadeOut)
            retryBtn.run(fadeOut)
            menuBtn.run(fadeOut)
            brick1.run(fadeOut)
            brick2.run(fadeOut)
            brick3.run(fadeOut)
            nextBtn.run(fadeOut, completion: {
                let scene = TitleScene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        if touchedNode.name == "retryBtn" {
            retryBtn.texture = retryUpTexture
            nextBtn.texture = nextUpTexture
            scoreLbl.run(fadeOut)
            paddle.run(fadeOut)
            retryBtn.run(fadeOut)
            menuBtn.run(fadeOut)
            brick1.run(fadeOut)
            brick2.run(fadeOut)
            brick3.run(fadeOut)
            nextBtn.run(fadeOut, completion: {
                let scene = ch1lvl1Scene(size: CGSize(width: 640, height: 1136))
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
        
        if touchedNode.name != "nextBtn" {
            nextBtn.texture = nextUpTexture
        }
        if touchedNode.name != "menuBtn" {
            menuBtn.texture = menuUpTexture
        }
        if touchedNode.name != "retryBtn" {
            retryBtn.texture = retryUpTexture
        }
        
        if gameStarted == true && gameOver == false {
            for touch in touches {
                let location = touch.location(in: self)
                
                paddle.run(SKAction.moveTo(x: location.x, duration: 0.05))
                
            }
        } else {
            // gameStarted == false
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
       
    }
    
    func ballHitBrick(Ball: SKSpriteNode, Brick: SKSpriteNode) {
        
        score += 10
        scoreLbl.text = "\(score)"
        
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
        
        
        if Brick.name == "brick1" {
            if brick1Life == 1 {
                brick1Life -= 1
                brick1.removeFromParent()
                brickExplosion.position = brick1.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick2" {
            if brick2Life == 1 {
                brick2Life -= 1
                brick2.removeFromParent()
                brickExplosion.position = brick2.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        if Brick.name == "brick3" {
            if brick3Life == 1 {
                brick3Life -= 1
                brick3.removeFromParent()
                brickExplosion.position = brick3.position
                self.addChild(brickExplosion)
                self.run(explosionWait, completion: {
                    brickExplosion.removeFromParent()
                })
            }
        }
        
        if brickCount == 1{
            print("ch1lvl1 completed")
            
            if ch1lvl2Unlocked == false {
                continueBtnString = "ch1lvl2"
                UserDefaults.standard.set("ch1lvl2", forKey: "continueBtnString")
                UserDefaults.standard.synchronize()
                
                self.ch1lvl2Unlocked = true
                UserDefaults.standard.set(true, forKey: "ch1lvl2Unlocked")
                UserDefaults.standard.synchronize()
            }
            
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
            
            gameOver = true
            
            timeTimer.invalidate()
            
            self.isPaused = false
            continueBtn.removeFromParent()
            
            UIView.animate(withDuration: 0.5, animations: {
                self.menuBtn.alpha = 1
                self.retryBtn.alpha = 1
                self.nextBtn.alpha = 1
            })
            
        } else {
            brickCount -= 1
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
        
        UIView.animate(withDuration: 0.5, animations: {
            if self.ch1lvl2Unlocked == true {
                self.nextBtn.alpha = 1
                self.menuBtn.alpha = 1
                self.retryBtn.alpha = 1
                self.gameOverLbl.alpha = 1
            } else if self.ch1lvl2Unlocked == false {
                self.menuBtn.alpha = 1
                self.retryBtn.alpha = 1
                self.gameOverLbl.alpha = 1
            }
        })
    }
    
    @objc func tapMove() {
        tapBtn.run(SKAction.moveTo(x: self.frame.width / 1.1, duration: 2), completion: {
            self.tapBtn.run(SKAction.moveTo(x: self.frame.width / 16, duration: 4), completion: {
                self.tapBtn.run(SKAction.moveTo(x: self.frame.width / 2, duration: 2))
            })
        })
    }
    
    @objc func fingerTap() {
        tapBtn.texture = tap2
        let wait = SKAction.wait(forDuration: 0.5)
        self.run(wait, completion: {
            self.tapBtn.texture = self.tap1
        })
    }
    
    @objc func keepTime() {
        time = Date().timeIntervalSinceReferenceDate - startTime
        timeLbl.text = String(format: "%.1f", time)
    }
    
}
