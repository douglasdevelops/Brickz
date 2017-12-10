//
//  Chapter1SelectScene.swift
//  Brickz
//
//  Created by Julian Cearley on 9/10/17.
//  Copyright © 2017 Julian Cearley. All rights reserved.
//

// chapter 1 will be normal stationary obstacles
// ch2 walls
///ch3 will be moving obstacles
// ch4 will be portals
// ch5 moving bricks
//

import UIKit
import SpriteKit

class ch1SelectScene: SKScene {
    
    let fadeOut = SKAction.fadeOut(withDuration: 0.5)
    
    let chapter1Title = SKSpriteNode(imageNamed: "ch1UpImg")
    
    let leftBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let rightBarrier = SKSpriteNode(imageNamed: "WallVertical")
    let topBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    let bottomBarrier = SKSpriteNode(imageNamed: "WallHorizontal")
    
    let ch1lvl1Texture = SKTexture(imageNamed: "lvl1Img"), ch1lvl2Texture = SKTexture(imageNamed: "lvl2Img"), ch1lvl3Texture = SKTexture(imageNamed: "lvl3Img"), ch1lvl4Texture = SKTexture(imageNamed: "lvl4Img"), ch1lvl5Texture = SKTexture(imageNamed: "lvl5Img"), ch1lvl6Texture = SKTexture(imageNamed: "lvl6Img"), ch1lvl7Texture = SKTexture(imageNamed: "lvl7Img"), ch1lvl8Texture = SKTexture(imageNamed: "lvl8Img"), ch1lvl9Texture = SKTexture(imageNamed: "lvl9Img"), ch1lvl10Texture = SKTexture(imageNamed: "lvl10Img"), ch1lvl11Texture = SKTexture(imageNamed: "lvl11Img"), ch1lvl12Texture = SKTexture(imageNamed: "lvl12Img"), ch1lvl13Texture = SKTexture(imageNamed: "lvl13Img"), ch1lvl14Texture = SKTexture(imageNamed: "lvl14Img"), ch1lvl15Texture = SKTexture(imageNamed: "lvl15Img"), ch1lvl16Texture = SKTexture(imageNamed: "lvl16Img"), ch1lvl17Texture = SKTexture(imageNamed: "lvl17Img"), ch1lvl18Texture = SKTexture(imageNamed: "lvl18Img"), ch1lvl19Texture = SKTexture(imageNamed: "lvl19Img"), ch1lvl20Texture = SKTexture(imageNamed: "lvl20Img"), ch1lvl21Texture = SKTexture(imageNamed: "lvl21Img"), ch1lvl22Texture = SKTexture(imageNamed: "lvl22Img"), ch1lvl23Texture = SKTexture(imageNamed: "lvl23Img"), ch1lvl24Texture = SKTexture(imageNamed: "lvl24Img"), ch1lvl25Texture = SKTexture(imageNamed: "lvl25Img"), ch1lvl26Texture = SKTexture(imageNamed: "lvl26Img"), ch1lvl27Texture = SKTexture(imageNamed: "lvl27Img"), ch1lvl28Texture = SKTexture(imageNamed: "lvl28Img"), ch1lvl29Texture = SKTexture(imageNamed: "lvl29Img"), ch1lvl30Texture = SKTexture(imageNamed: "lvl30Img")
    
    let lvlLockedTxture = SKTexture(imageNamed: "lvlLockedImg")
    
    var ch1lvl2Unlocked  = UserDefaults.standard.bool(forKey: "ch1lvl2Unlocked"), ch1lvl3Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl3Unlocked"), ch1lvl4Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl4Unlocked"), ch1lvl5Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl5Unlocked"), ch1lvl6Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl6Unlocked"), ch1lvl7Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl7Unlocked"), ch1lvl8Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl8Unlocked"), ch1lvl9Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl9Unlocked"), ch1lvl10Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl10Unlocked"), ch1lvl11Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl11Unlocked"), ch1lvl12Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl12Unlocked"), ch1lvl13Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl13Unlocked"), ch1lvl14Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl14Unlocked"), ch1lvl15Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl15Unlocked"), ch1lvl16Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl16Unlocked"), ch1lvl17Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl17Unlocked"), ch1lvl18Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl18Unlocked"), ch1lvl19Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl19Unlocked"), ch1lvl20Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl20Unlocked"), ch1lvl21Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl21Unlocked"), ch1lvl22Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl22Unlocked"), ch1lvl23Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl23Unlocked"), ch1lvl24Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl24Unlocked"), ch1lvl25Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl25Unlocked"), ch1lvl26Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl26Unlocked"), ch1lvl27Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl27Unlocked"), ch1lvl28Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl28Unlocked"), ch1lvl29Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl29Unlocked"), ch1lvl30Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl30Unlocked"), ch1lvl31Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl31Unlocked"), ch1lvl32Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl32Unlocked"), ch1lvl33Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl33Unlocked"), ch1lvl34Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl34Unlocked"), ch1lvl35Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl35Unlocked"), ch1lvl36Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl36Unlocked"), ch1lvl37Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl37Unlocked"), ch1lvl38Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl38Unlocked"), ch1lvl39Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl39Unlocked"), ch1lvl40Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl40Unlocked"), ch1lvl41Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl41Unlocked"), ch1lvl42Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl42Unlocked"), ch1lvl43Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl43Unlocked"), ch1lvl44Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl45Unlocked"), ch1lvl46Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl46Unlocked"), ch1lvl47Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl47Unlocked"), ch1lvl48Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl48Unlocked"), ch1lvl49Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl49Unlocked"), ch1lvl50Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl50Unlocked"), ch1lvl51Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl51Unlocked"), ch1lvl52Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl52Unlocked"), ch1lvl53Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl53Unlocked"), ch1lvl54Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl54Unlocked"), ch1lvl55Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl55Unlocked"), ch1lvl56Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl56Unlocked"), ch1lvl57Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl57Unlocked"), ch1lvl58Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl58Unlocked"), ch1lvl59Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl59Unlocked"), ch1lvl60Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl60Unlocked"), ch1lvl61Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl61Unlocked"), ch1lvl62Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl62Unlocked"), ch1lvl63Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl63Unlocked"), ch1lvl64Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl64Unlocked"), ch1lvl65Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl65Unlocked"), ch1lvl66Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl66Unlocked"), ch1lvl67Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl67Unlocked"), ch1lvl68Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl68Unlocked"), ch1lvl69Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl69Unlocked"), ch1lvl70Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl70Unlocked"), ch1lvl71Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl71Unlocked"), ch1lvl72Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl72Unlocked"), ch1lvl73Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl73Unlocked"), ch1lvl74Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl74Unlocked"), ch1lvl75Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl75Unlocked"), ch1lvl76Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl76Unlocked"), ch1lvl77Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl77Unlocked"), ch1lvl78Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl78Unlocked"), ch1lvl79Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl79Unlocked"), ch1lvl80Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl80Unlocked"), ch1lvl81Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl81Unlocked"), ch1lvl82Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl82Unlocked"), ch1lvl83Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl83Unlocked"), ch1lvl84Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl84Unlocked"), ch1lvl85Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl85Unlocked"), ch1lvl86Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl86Unlocked"), ch1lvl87Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl87Unlocked"), ch1lvl88Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl88Unlocked"), ch1lvl89Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl89Unlocked"), ch1lvl90Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl90Unlocked"), ch1lvl91Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl91Unlocked"), ch1lvl92Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl92Unlocked"), ch1lvl93Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl93Unlocked"), ch1lvl94Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl94Unlocked"), ch1lvl95Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl95Unlocked"), ch1lvl96Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl96Unlocked"), ch1lvl97Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl97Unlocked"), ch1lvl98Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl98Unlocked"), ch1lvl99Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl99Unlocked"), ch1lvl100Unlocked = UserDefaults.standard.bool(forKey: "ch1lvl100Unlocked")
    
    let lvl1Btn = SKSpriteNode(), lvl2Btn = SKSpriteNode(), lvl3Btn = SKSpriteNode(), lvl4Btn = SKSpriteNode(), lvl5Btn = SKSpriteNode(), lvl6Btn = SKSpriteNode(), lvl7Btn = SKSpriteNode(), lvl8Btn = SKSpriteNode(), lvl9Btn = SKSpriteNode(), lvl10Btn = SKSpriteNode(), lvl11Btn = SKSpriteNode(), lvl12Btn = SKSpriteNode(), lvl13Btn = SKSpriteNode(), lvl14Btn = SKSpriteNode(), lvl15Btn = SKSpriteNode(), lvl16Btn = SKSpriteNode(), lvl17Btn = SKSpriteNode(), lvl18Btn = SKSpriteNode(), lvl19Btn = SKSpriteNode(), lvl20Btn = SKSpriteNode(), lvl21Btn = SKSpriteNode(), lvl22Btn = SKSpriteNode(), lvl23Btn = SKSpriteNode(), lvl24Btn = SKSpriteNode(), lvl25Btn = SKSpriteNode(), lvl26Btn = SKSpriteNode(), lvl27Btn = SKSpriteNode(), lvl28Btn = SKSpriteNode(), lvl29Btn = SKSpriteNode(), lvl30Btn = SKSpriteNode(), lvl31Btn = SKSpriteNode(), lvl32Btn = SKSpriteNode(), lvl33Btn = SKSpriteNode(), lvl34Btn = SKSpriteNode(), lvl35Btn = SKSpriteNode(), lvl36Btn = SKSpriteNode(), lvl37Btn = SKSpriteNode(), lvl38Btn = SKSpriteNode(), lvl39Btn = SKSpriteNode(), lvl40Btn = SKSpriteNode(), lvl41Btn = SKSpriteNode(), lvl42Btn = SKSpriteNode(), lvl43Btn = SKSpriteNode(), lvl44Btn = SKSpriteNode(), lvl45Btn = SKSpriteNode(), lvl46Btn = SKSpriteNode(), lvl47Btn = SKSpriteNode(), lvl48Btn = SKSpriteNode(), lvl49Btn = SKSpriteNode(), lvl50Btn = SKSpriteNode(), lvl51Btn = SKSpriteNode(), lvl52Btn = SKSpriteNode(), lvl53Btn = SKSpriteNode(), lvl54Btn = SKSpriteNode(), lvl55Btn = SKSpriteNode(), lvl56Btn = SKSpriteNode(), lvl57Btn = SKSpriteNode(), lvl58Btn = SKSpriteNode(), lvl59Btn = SKSpriteNode(), lvl60Btn = SKSpriteNode(), lvl61Btn = SKSpriteNode(), lvl62Btn = SKSpriteNode(), lvl63Btn = SKSpriteNode(), lvl64Btn = SKSpriteNode(), lvl65Btn = SKSpriteNode(), lvl66Btn = SKSpriteNode(), lvl67Btn = SKSpriteNode(), lvl68Btn = SKSpriteNode(), lvl69Btn = SKSpriteNode(), lvl70Btn = SKSpriteNode(), lvl71Btn = SKSpriteNode(), lvl72Btn = SKSpriteNode(), lvl73Btn = SKSpriteNode(), lvl74Btn = SKSpriteNode(), lvl75Btn = SKSpriteNode(), lvl76Btn = SKSpriteNode(), lvl77Btn = SKSpriteNode(), lvl78Btn = SKSpriteNode(), lvl79Btn = SKSpriteNode(), lvl80Btn = SKSpriteNode(), lvl81Btn = SKSpriteNode(), lvl82Btn = SKSpriteNode(), lvl83Btn = SKSpriteNode(), lvl84Btn = SKSpriteNode(), lvl85Btn = SKSpriteNode(), lvl86Btn = SKSpriteNode(), lvl87Btn = SKSpriteNode(), lvl88Btn = SKSpriteNode(), lvl89Btn = SKSpriteNode(), lvl90Btn = SKSpriteNode(), lvl91Btn = SKSpriteNode(), lvl92Btn = SKSpriteNode(), lvl93Btn = SKSpriteNode(), lvl94tn = SKSpriteNode(), lvl95Btn = SKSpriteNode(), lvl96Btn = SKSpriteNode(), lvl97Btn = SKSpriteNode(), lvl98Btn = SKSpriteNode(), lvl99Btn = SKSpriteNode(), lvl100Btn = SKSpriteNode()
    
    let leftArrow = SKSpriteNode(imageNamed: "LeftArrowImg")
    let rightArrow = SKSpriteNode(imageNamed: "RightArrowImg")
    let menuTextureUp = SKTexture(imageNamed: "menuImgUp")
    let menuTextureDown = SKTexture(imageNamed: "menuImgDown")
    let menuBtn = SKSpriteNode()
    
    var scrollNum = 1
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0, y: 0)
        self.backgroundColor = SKColor.lightGray
        
        leftArrow.size = CGSize(width: self.frame.width / 5, height: self.frame.width / 5)
        leftArrow.position = CGPoint(x: self.frame.width / 5, y: self.frame.height / 3)
        leftArrow.name = "leftArrow"
        self.addChild(leftArrow)
        
        rightArrow.size = CGSize(width: self.frame.width / 5, height: self.frame.width / 5)
        rightArrow.position = CGPoint(x: self.frame.width - (self.frame.width / 5), y: self.frame.height / 3)
        rightArrow.name = "rightArrow"
        self.addChild(rightArrow)
        
        menuBtn.texture = menuTextureUp
        menuBtn.size = CGSize(width: self.frame.width / 3.5, height: self.frame.height / 12)
        menuBtn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 6)
        menuBtn.name = "menuBtn"
        self.addChild(menuBtn)
        
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
        
        chapter1Title.size = CGSize(width: self.frame.width / 1.5, height: self.frame.height / 9)
        chapter1Title.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.1)
        self.addChild(chapter1Title)
        
        lvl1Btn.texture = ch1lvl1Texture
        lvl1Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl1Btn.position = CGPoint(x: self.frame.width / 5, y: self.frame.height / 1.3)
        lvl1Btn.name = "lvl1Btn"
        self.addChild(lvl1Btn)
        
        if ch1lvl2Unlocked == true {
            lvl2Btn.texture = ch1lvl2Texture
        } else {
            lvl2Btn.texture = lvlLockedTxture
        }
        lvl2Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl2Btn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.3)
        lvl2Btn.name = "lvl2Btn"
        self.addChild(lvl2Btn)
        
        if ch1lvl3Unlocked == true {
            lvl3Btn.texture = ch1lvl3Texture
        } else {
            lvl3Btn.texture = lvlLockedTxture
        }
        lvl3Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl3Btn.position = CGPoint(x: self.frame.width - (self.frame.width / 5), y: self.frame.height / 1.3)
        lvl3Btn.name = "lvl3Btn"
        self.addChild(lvl3Btn)
        
        if ch1lvl4Unlocked == true {
            lvl4Btn.texture = ch1lvl4Texture
        } else {
            lvl4Btn.texture = lvlLockedTxture
        }
        lvl4Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl4Btn.position = CGPoint(x: self.frame.width / 5, y: self.frame.height / 1.6)
        lvl4Btn.name = "lvl4Btn"
        self.addChild(lvl4Btn)
        
        if ch1lvl5Unlocked == true {
            lvl5Btn.texture = ch1lvl5Texture
        } else {
            lvl5Btn.texture = lvlLockedTxture
        }
        lvl5Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl5Btn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 1.6)
        lvl5Btn.name = "lvl5Btn"
        self.addChild(lvl5Btn)
        
        if ch1lvl6Unlocked == true {
            lvl6Btn.texture = ch1lvl6Texture
        } else {
            lvl6Btn.texture = lvlLockedTxture
        }
        lvl6Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl6Btn.position = CGPoint(x: self.frame.width - (self.frame.width / 5), y: self.frame.height / 1.6)
        lvl6Btn.name = "lvl6Btn"
        self.addChild(lvl6Btn)
        
        if ch1lvl7Unlocked == true {
            lvl7Btn.texture = ch1lvl7Texture
        } else {
            lvl7Btn.texture = lvlLockedTxture
        }
        lvl7Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl7Btn.position = CGPoint(x: self.frame.width / 5, y: self.frame.height / 2.1)
        lvl7Btn.name = "lvl7Btn"
        self.addChild(lvl7Btn)
        
        if ch1lvl8Unlocked == true {
            lvl8Btn.texture = ch1lvl8Texture
        } else {
            lvl8Btn.texture = lvlLockedTxture
        }
        lvl8Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl8Btn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2.1)
        lvl8Btn.name = "lvl8Btn"
        self.addChild(lvl8Btn)
        
        if ch1lvl9Unlocked == true {
            lvl9Btn.texture = ch1lvl9Texture
        } else {
            lvl9Btn.texture = lvlLockedTxture
        }
        lvl9Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl9Btn.position = CGPoint(x: self.frame.width - (self.frame.width / 5), y: self.frame.height / 2.1)
        lvl9Btn.name = "lvl9Btn"
        self.addChild(lvl9Btn)
        
        if ch1lvl10Unlocked == true {
            lvl10Btn.texture = ch1lvl10Texture
        } else {
            lvl10Btn.texture = lvlLockedTxture
        }
        lvl10Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl10Btn.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 3)
        lvl10Btn.name = "lvl10Btn"
        self.addChild(lvl10Btn)
        
        if ch1lvl11Unlocked == true {
            lvl11Btn.texture = ch1lvl11Texture
        } else if ch1lvl11Unlocked == false {
            lvl11Btn.texture = lvlLockedTxture
        }
        lvl11Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl11Btn.position = lvl1Btn.position
        lvl11Btn.name = "lvl11Btn"
        
        if ch1lvl12Unlocked == true {
            lvl12Btn.texture = ch1lvl12Texture
        } else if ch1lvl12Unlocked == false {
            lvl12Btn.texture = lvlLockedTxture
        }
        lvl12Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl12Btn.position = lvl2Btn.position
        lvl12Btn.name = "lvl12Btn"
        
        if ch1lvl13Unlocked == true {
            lvl13Btn.texture = ch1lvl13Texture
        } else if ch1lvl13Unlocked == false {
            lvl13Btn.texture = lvlLockedTxture
        }
        lvl13Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl13Btn.position = lvl3Btn.position
        lvl13Btn.name = "lvl13Btn"
        
        if ch1lvl14Unlocked == true {
            lvl14Btn.texture = ch1lvl14Texture
        } else if ch1lvl14Unlocked == false {
            lvl14Btn.texture = lvlLockedTxture
        }
        lvl14Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl14Btn.position = lvl4Btn.position
        lvl14Btn.name = "lvl14Btn"
        
        
        if ch1lvl15Unlocked == true {
            lvl15Btn.texture = ch1lvl15Texture
        } else if ch1lvl14Unlocked == false {
            lvl15Btn.texture = lvlLockedTxture
        }
        lvl15Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl15Btn.position = lvl5Btn.position
        lvl15Btn.name = "lvl15Btn"
        
        if ch1lvl16Unlocked == true {
            lvl16Btn.texture = ch1lvl16Texture
        } else if ch1lvl16Unlocked == false {
            lvl16Btn.texture = lvlLockedTxture
        }
        lvl16Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl16Btn.position = lvl6Btn.position
        lvl16Btn.name = "lvl16Btn"
        
        if ch1lvl17Unlocked == true {
            lvl17Btn.texture = ch1lvl17Texture
        } else if ch1lvl17Unlocked == false {
            lvl17Btn.texture = lvlLockedTxture
        }
        lvl17Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl17Btn.position = lvl7Btn.position
        lvl17Btn.name = "lvl17Btn"
        
        if ch1lvl18Unlocked == true {
            lvl18Btn.texture = ch1lvl18Texture
        } else if ch1lvl18Unlocked == false {
            lvl18Btn.texture = lvlLockedTxture
        }
        lvl18Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl18Btn.position = lvl8Btn.position
        lvl18Btn.name = "lvl18Btn"
        
        if ch1lvl19Unlocked == true {
            lvl19Btn.texture = ch1lvl19Texture
        } else if ch1lvl19Unlocked == false {
            lvl19Btn.texture = lvlLockedTxture
        }
        lvl19Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl19Btn.position = lvl9Btn.position
        lvl19Btn.name = "lvl19Btn"
        
        if ch1lvl20Unlocked == true {
            lvl20Btn.texture = ch1lvl20Texture
        } else if ch1lvl20Unlocked == false {
            lvl20Btn.texture = lvlLockedTxture
        }
        lvl20Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl20Btn.position = lvl10Btn.position
        lvl20Btn.name = "lvl20Btn"
        
        if ch1lvl21Unlocked == true {
            lvl21Btn.texture = ch1lvl21Texture
        } else if ch1lvl21Unlocked == false {
            lvl20Btn.texture = lvlLockedTxture
        }
        lvl21Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl21Btn.position = lvl1Btn.position
        lvl21Btn.name = "lvl21Btn"
        
        if ch1lvl22Unlocked == true {
            lvl22Btn.texture = ch1lvl22Texture
        } else if ch1lvl22Unlocked == false {
            lvl22Btn.texture = lvlLockedTxture
        }
        lvl22Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl22Btn.position = lvl2Btn.position
        lvl22Btn.name = "lvl22Btn"
        
        if ch1lvl23Unlocked == true {
            lvl23Btn.texture = ch1lvl23Texture
        } else if ch1lvl23Unlocked == false {
            lvl23Btn.texture = lvlLockedTxture
        }
        lvl23Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl23Btn.position = lvl3Btn.position
        lvl23Btn.name = "lvl23Btn"
        
        if ch1lvl24Unlocked == true {
            lvl24Btn.texture = ch1lvl24Texture
        } else if ch1lvl24Unlocked == false {
            lvl24Btn.texture = lvlLockedTxture
        }
        lvl24Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl24Btn.position = lvl4Btn.position
        lvl24Btn.name = "lvl24Btn"
        
        if ch1lvl25Unlocked == true {
            lvl25Btn.texture = ch1lvl25Texture
        } else if ch1lvl25Unlocked == false {
            lvl25Btn.texture = lvlLockedTxture
        }
        lvl25Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl25Btn.position = lvl5Btn.position
        lvl25Btn.name = "lvl25Btn"
        
        if ch1lvl26Unlocked == true {
            lvl26Btn.texture = ch1lvl26Texture
        } else if ch1lvl26Unlocked == false {
            lvl26Btn.texture = lvlLockedTxture
        }
        lvl26Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl26Btn.position = lvl6Btn.position
        lvl26Btn.name = "lvl26Btn"
        
        if ch1lvl27Unlocked == true {
            lvl27Btn.texture = ch1lvl27Texture
        } else if ch1lvl27Unlocked == false {
            lvl27Btn.texture = lvlLockedTxture
        }
        lvl27Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl27Btn.position = lvl7Btn.position
        lvl27Btn.name = "lvl27Btn"
        
        if ch1lvl28Unlocked == true {
            lvl28Btn.texture = ch1lvl28Texture
        } else if ch1lvl28Unlocked == false {
            lvl28Btn.texture = lvlLockedTxture
        }
        lvl28Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl28Btn.position = lvl8Btn.position
        lvl28Btn.name = "lvl28Btn"
        
        if ch1lvl29Unlocked == true {
            lvl29Btn.texture = ch1lvl29Texture
        } else if ch1lvl29Unlocked == false {
            lvl29Btn.texture = lvlLockedTxture
        }
        lvl29Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl29Btn.position = lvl9Btn.position
        lvl29Btn.name = "lvl29Btn"
        
        
        if ch1lvl30Unlocked == true {
            lvl30Btn.texture = ch1lvl30Texture
        } else if ch1lvl30Unlocked == false {
            lvl30Btn.texture = lvlLockedTxture
        }
        lvl30Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        lvl30Btn.position = lvl10Btn.position
        lvl30Btn.name = "lvl30Btn"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if touchedNode.name == "leftArrow" {
            leftArrow.color = SKColor.darkGray
            leftArrow.colorBlendFactor = 1
            leftArrow.run(SKAction.scale(to: CGSize(width: self.frame.width / 6, height: self.frame.width / 6), duration: 0))
        }
        
        if touchedNode.name == "rightArrow" {
            rightArrow.color = SKColor.darkGray
            rightArrow.colorBlendFactor = 1
            rightArrow.run(SKAction.scale(to: CGSize(width: self.frame.width / 6, height: self.frame.width / 6), duration: 0))
        }
        
        if touchedNode.name == "menuBtn" {
            menuBtn.texture = menuTextureDown
        }
        
        if touchedNode.name == "lvl1Btn" {
            lvl1Btn.color = SKColor.darkGray
            lvl1Btn.colorBlendFactor = 1
            lvl1Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl2Btn" {
            lvl2Btn.color = SKColor.darkGray
            lvl2Btn.colorBlendFactor = 1
            lvl2Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl3Btn" {
            lvl3Btn.color = SKColor.darkGray
            lvl3Btn.colorBlendFactor = 1
            lvl3Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl4Btn" {
            lvl4Btn.color = SKColor.darkGray
            lvl4Btn.colorBlendFactor = 1
            lvl4Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl5Btn" {
            lvl5Btn.color = SKColor.darkGray
            lvl5Btn.colorBlendFactor = 1
            lvl5Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl6Btn" {
            lvl6Btn.color = SKColor.darkGray
            lvl6Btn.colorBlendFactor = 1
            lvl6Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl7Btn" {
            lvl7Btn.color = SKColor.darkGray
            lvl7Btn.colorBlendFactor = 1
            lvl7Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl8Btn" {
            lvl8Btn.color = SKColor.darkGray
            lvl8Btn.colorBlendFactor = 1
            lvl8Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl9Btn" {
            lvl9Btn.color = SKColor.darkGray
            lvl9Btn.colorBlendFactor = 1
            lvl9Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl10Btn" {
            lvl10Btn.color = SKColor.darkGray
            lvl10Btn.colorBlendFactor = 1
            lvl10Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl11Btn" {
            lvl11Btn.color = SKColor.darkGray
            lvl11Btn.colorBlendFactor = 1
            lvl11Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl12Btn" {
            lvl12Btn.color = SKColor.darkGray
            lvl12Btn.colorBlendFactor = 1
            lvl12Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl13Btn" {
            lvl13Btn.color = SKColor.darkGray
            lvl13Btn.colorBlendFactor = 1
            lvl13Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl14Btn" {
            lvl14Btn.color = SKColor.darkGray
            lvl14Btn.colorBlendFactor = 1
            lvl14Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl15Btn" {
            lvl15Btn.color = SKColor.darkGray
            lvl15Btn.colorBlendFactor = 1
            lvl15Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl16Btn" {
            lvl16Btn.color = SKColor.darkGray
            lvl16Btn.colorBlendFactor = 1
            lvl16Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl17Btn" {
            lvl17Btn.color = SKColor.darkGray
            lvl17Btn.colorBlendFactor = 1
            lvl17Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl18Btn" {
            lvl18Btn.color = SKColor.darkGray
            lvl18Btn.colorBlendFactor = 1
            lvl18Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl19Btn" {
            lvl19Btn.color = SKColor.darkGray
            lvl19Btn.colorBlendFactor = 1
            lvl19Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl20Btn" {
            lvl20Btn.color = SKColor.darkGray
            lvl20Btn.colorBlendFactor = 1
            lvl20Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl21Btn" {
            lvl21Btn.color = SKColor.darkGray
            lvl21Btn.colorBlendFactor = 1
            lvl21Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl22Btn" {
            lvl22Btn.color = SKColor.darkGray
            lvl22Btn.colorBlendFactor = 1
            lvl22Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl23Btn" {
            lvl23Btn.color = SKColor.darkGray
            lvl23Btn.colorBlendFactor = 1
            lvl23Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl24Btn" {
            lvl24Btn.color = SKColor.darkGray
            lvl24Btn.colorBlendFactor = 1
            lvl24Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl25Btn" {
            lvl25Btn.color = SKColor.darkGray
            lvl25Btn.colorBlendFactor = 1
            lvl25Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl26Btn" {
            lvl26Btn.color = SKColor.darkGray
            lvl26Btn.colorBlendFactor = 1
            lvl26Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl27Btn" {
            lvl27Btn.color = SKColor.darkGray
            lvl27Btn.colorBlendFactor = 1
            lvl27Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl28Btn" {
            lvl28Btn.color = SKColor.darkGray
            lvl28Btn.colorBlendFactor = 1
            lvl28Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl29Btn" {
            lvl29Btn.color = SKColor.darkGray
            lvl29Btn.colorBlendFactor = 1
            lvl29Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
        if touchedNode.name == "lvl30Btn" {
            lvl30Btn.color = SKColor.darkGray
            lvl30Btn.colorBlendFactor = 1
            lvl30Btn.size = CGSize(width: self.frame.width / 7, height: self.frame.width / 7)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if touchedNode.name == "leftArrow" {
            leftArrow.colorBlendFactor = 0
            leftArrow.run(SKAction.scale(to: CGSize(width: self.frame.width / 5, height: self.frame.width / 5), duration: 0))
            if scrollNum == 1 {
                
            } else if scrollNum == 2 {
                
            } else if scrollNum == 3 {
                
            } else if scrollNum == 4 {
                
            } else if scrollNum == 5 {
                
            } else if scrollNum == 6 {
                
            } else if scrollNum == 7 {
                
            } else if scrollNum == 8 {
                
            } else if scrollNum == 9 {
                
            } else if scrollNum == 10 {
                
            }
        }
        
        if touchedNode.name == "rightArrow" {
            rightArrow.colorBlendFactor = 0
            rightArrow.run(SKAction.scale(to: CGSize(width: self.frame.width / 5, height: self.frame.width / 5), duration: 0))
            if scrollNum == 1 {
                scrollNum = 2
                lvl1Btn.removeFromParent()
                lvl2Btn.removeFromParent()
                lvl3Btn.removeFromParent()
                lvl4Btn.removeFromParent()
                lvl5Btn.removeFromParent()
                lvl6Btn.removeFromParent()
                lvl7Btn.removeFromParent()
                lvl8Btn.removeFromParent()
                lvl9Btn.removeFromParent()
                lvl10Btn.removeFromParent()
                self.addChild(lvl11Btn)
                self.addChild(lvl12Btn)
                self.addChild(lvl13Btn)
                self.addChild(lvl14Btn)
                self.addChild(lvl15Btn)
                self.addChild(lvl16Btn)
                self.addChild(lvl17Btn)
                self.addChild(lvl18Btn)
                self.addChild(lvl19Btn)
                self.addChild(lvl20Btn)
            } else if scrollNum == 2 {
                scrollNum = 3
                lvl11Btn.removeFromParent()
                lvl12Btn.removeFromParent()
                lvl13Btn.removeFromParent()
                lvl14Btn.removeFromParent()
                lvl15Btn.removeFromParent()
                lvl16Btn.removeFromParent()
                lvl17Btn.removeFromParent()
                lvl18Btn.removeFromParent()
                lvl19Btn.removeFromParent()
                lvl20Btn.removeFromParent()
                self.addChild(lvl21Btn)
                self.addChild(lvl22Btn)
                self.addChild(lvl23Btn)
                self.addChild(lvl24Btn)
                self.addChild(lvl25Btn)
                self.addChild(lvl26Btn)
                self.addChild(lvl27Btn)
                self.addChild(lvl28Btn)
                self.addChild(lvl29Btn)
                self.addChild(lvl30Btn)
            } else if scrollNum == 3 {
                
            } else if scrollNum == 4 {
                
            } else if scrollNum == 5 {
                
            } else if scrollNum == 6 {
                
            } else if scrollNum == 7 {
                
            } else if scrollNum == 8 {
                
            } else if scrollNum == 9 {
                
            } else if scrollNum == 10 {
                
            }
        }
        
        if touchedNode.name == "menuBtn" {
            menuBtn.texture = menuTextureUp
        }
        
        if touchedNode.name == "lvl1Btn" {
            lvl1Btn.colorBlendFactor = 0
            lvl1Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            lvl1Btn.run(fadeOut)
            lvl2Btn.run(fadeOut)
            lvl3Btn.run(fadeOut)
            lvl4Btn.run(fadeOut)
            lvl5Btn.run(fadeOut)
            lvl6Btn.run(fadeOut)
            lvl7Btn.run(fadeOut)
            lvl8Btn.run(fadeOut)
            lvl9Btn.run(fadeOut)
            lvl10Btn.run(fadeOut)
            chapter1Title.run(fadeOut)
            leftArrow.run(fadeOut)
            rightArrow.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl1Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        
        if touchedNode.name == "lvl2Btn" {
            lvl2Btn.colorBlendFactor = 0
            lvl2Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl2Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl2Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl3Btn" {
            lvl3Btn.colorBlendFactor = 0
            lvl3Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl3Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl3Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl4Btn" {
            lvl4Btn.colorBlendFactor = 0
            lvl4Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            lvl1Btn.run(fadeOut)
            lvl2Btn.run(fadeOut)
            lvl3Btn.run(fadeOut)
            lvl4Btn.run(fadeOut)
            lvl5Btn.run(fadeOut)
            lvl6Btn.run(fadeOut)
            lvl7Btn.run(fadeOut)
            lvl8Btn.run(fadeOut)
            lvl9Btn.run(fadeOut)
            lvl10Btn.run(fadeOut)
            chapter1Title.run(fadeOut)
            leftArrow.run(fadeOut)
            rightArrow.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl4Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        
        if touchedNode.name == "lvl5Btn" {
            lvl5Btn.colorBlendFactor = 0
            lvl5Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            lvl1Btn.run(fadeOut)
            lvl2Btn.run(fadeOut)
            lvl3Btn.run(fadeOut)
            lvl4Btn.run(fadeOut)
            lvl5Btn.run(fadeOut)
            lvl6Btn.run(fadeOut)
            lvl7Btn.run(fadeOut)
            lvl8Btn.run(fadeOut)
            lvl9Btn.run(fadeOut)
            lvl10Btn.run(fadeOut)
            chapter1Title.run(fadeOut)
            leftArrow.run(fadeOut)
            rightArrow.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl5Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        if touchedNode.name == "lvl6Btn" {
            lvl6Btn.colorBlendFactor = 0
            lvl6Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            lvl1Btn.run(fadeOut)
            lvl2Btn.run(fadeOut)
            lvl3Btn.run(fadeOut)
            lvl4Btn.run(fadeOut)
            lvl5Btn.run(fadeOut)
            lvl6Btn.run(fadeOut)
            lvl7Btn.run(fadeOut)
            lvl8Btn.run(fadeOut)
            lvl9Btn.run(fadeOut)
            lvl10Btn.run(fadeOut)
            chapter1Title.run(fadeOut)
            leftArrow.run(fadeOut)
            rightArrow.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl6Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        if touchedNode.name == "lvl7Btn" {
            lvl7Btn.colorBlendFactor = 0
            lvl7Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            lvl1Btn.run(fadeOut)
            lvl2Btn.run(fadeOut)
            lvl3Btn.run(fadeOut)
            lvl4Btn.run(fadeOut)
            lvl5Btn.run(fadeOut)
            lvl6Btn.run(fadeOut)
            lvl7Btn.run(fadeOut)
            lvl8Btn.run(fadeOut)
            lvl9Btn.run(fadeOut)
            lvl10Btn.run(fadeOut)
            chapter1Title.run(fadeOut)
            leftArrow.run(fadeOut)
            rightArrow.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl7Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        
        if touchedNode.name == "lvl8Btn" {
            lvl8Btn.colorBlendFactor = 0
            lvl8Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            lvl1Btn.run(fadeOut)
            lvl2Btn.run(fadeOut)
            lvl3Btn.run(fadeOut)
            lvl4Btn.run(fadeOut)
            lvl5Btn.run(fadeOut)
            lvl6Btn.run(fadeOut)
            lvl7Btn.run(fadeOut)
            lvl8Btn.run(fadeOut)
            lvl9Btn.run(fadeOut)
            lvl10Btn.run(fadeOut)
            chapter1Title.run(fadeOut)
            leftArrow.run(fadeOut)
            rightArrow.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl8Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        
        if touchedNode.name == "lvl9Btn" {
            lvl9Btn.colorBlendFactor = 0
            lvl9Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            lvl1Btn.run(fadeOut)
            lvl2Btn.run(fadeOut)
            lvl3Btn.run(fadeOut)
            lvl4Btn.run(fadeOut)
            lvl5Btn.run(fadeOut)
            lvl6Btn.run(fadeOut)
            lvl7Btn.run(fadeOut)
            lvl8Btn.run(fadeOut)
            lvl9Btn.run(fadeOut)
            lvl10Btn.run(fadeOut)
            chapter1Title.run(fadeOut)
            leftArrow.run(fadeOut)
            rightArrow.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl9Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        
        if touchedNode.name == "lvl10Btn" {
            lvl10Btn.colorBlendFactor = 0
            lvl10Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            lvl1Btn.run(fadeOut)
            lvl2Btn.run(fadeOut)
            lvl3Btn.run(fadeOut)
            lvl4Btn.run(fadeOut)
            lvl5Btn.run(fadeOut)
            lvl6Btn.run(fadeOut)
            lvl7Btn.run(fadeOut)
            lvl8Btn.run(fadeOut)
            lvl9Btn.run(fadeOut)
            lvl10Btn.run(fadeOut)
            chapter1Title.run(fadeOut)
            leftArrow.run(fadeOut)
            rightArrow.run(fadeOut)
            menuBtn.run(fadeOut, completion: {
                let scene = ch1lvl10Scene(size: CGSize(width: 640, height: 1136))
                let transition = SKTransition.fade(withDuration: 0)
                scene.scaleMode = .aspectFill
                self.view?.presentScene(scene, transition: transition)
            })
        }
        if touchedNode.name == "lvl11Btn" {
            lvl11Btn.colorBlendFactor = 0
            lvl11Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl11Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl11Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl12Btn" {
            lvl12Btn.colorBlendFactor = 0
            lvl12Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl12Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl12Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl13Btn" {
            lvl13Btn.colorBlendFactor = 0
            lvl13Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl13Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl13Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl14Btn" {
            lvl14Btn.colorBlendFactor = 0
            lvl14Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl14Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl14Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl15Btn" {
            lvl15Btn.colorBlendFactor = 0
            lvl15Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl15Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl15Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl16Btn" {
            lvl16Btn.colorBlendFactor = 0
            lvl16Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl16Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl16Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl17Btn" {
            lvl17Btn.colorBlendFactor = 0
            lvl17Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl17Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl17Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl18Btn" {
            lvl18Btn.colorBlendFactor = 0
            lvl18Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl18Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl18Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl19Btn" {
            lvl19Btn.colorBlendFactor = 0
            lvl19Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl19Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl19Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl20Btn" {
            lvl20Btn.colorBlendFactor = 0
            lvl20Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl20Unlocked == true {
                lvl1Btn.run(fadeOut)
                lvl2Btn.run(fadeOut)
                lvl3Btn.run(fadeOut)
                lvl4Btn.run(fadeOut)
                lvl5Btn.run(fadeOut)
                lvl6Btn.run(fadeOut)
                lvl7Btn.run(fadeOut)
                lvl8Btn.run(fadeOut)
                lvl9Btn.run(fadeOut)
                lvl10Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl20Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        
        if touchedNode.name == "lvl21Btn" {
            lvl21Btn.colorBlendFactor = 0
            lvl21Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl21Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl21Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        if touchedNode.name == "lvl22Btn" {
            lvl22Btn.colorBlendFactor = 0
            lvl22Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl22Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl22Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        if touchedNode.name == "lvl23Btn" {
            lvl23Btn.colorBlendFactor = 0
            lvl23Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl23Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl23Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        if touchedNode.name == "lvl24Btn" {
            lvl24Btn.colorBlendFactor = 0
            lvl24Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl24Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl24Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        if touchedNode.name == "lvl25Btn" {
            lvl25Btn.colorBlendFactor = 0
            lvl25Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl25Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl25Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        if touchedNode.name == "lvl26Btn" {
            lvl26Btn.colorBlendFactor = 0
            lvl26Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl26Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl26Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        if touchedNode.name == "lvl27Btn" {
            lvl27Btn.colorBlendFactor = 0
            lvl27Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl27Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl27Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        if touchedNode.name == "lvl28Btn" {
            lvl28Btn.colorBlendFactor = 0
            lvl28Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl28Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl28Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        if touchedNode.name == "lvl29Btn" {
            lvl29Btn.colorBlendFactor = 0
            lvl29Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl29Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl29Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
        if touchedNode.name == "lvl30Btn" {
            lvl30Btn.colorBlendFactor = 0
            lvl30Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
            if ch1lvl30Unlocked == true {
                lvl21Btn.run(fadeOut)
                lvl22Btn.run(fadeOut)
                lvl23Btn.run(fadeOut)
                lvl24Btn.run(fadeOut)
                lvl25Btn.run(fadeOut)
                lvl26Btn.run(fadeOut)
                lvl27Btn.run(fadeOut)
                lvl28Btn.run(fadeOut)
                lvl29Btn.run(fadeOut)
                lvl30Btn.run(fadeOut)
                chapter1Title.run(fadeOut)
                leftArrow.run(fadeOut)
                rightArrow.run(fadeOut)
                menuBtn.run(fadeOut, completion: {
                    let scene = ch1lvl30Scene(size: CGSize(width: 640, height: 1136))
                    let transition = SKTransition.fade(withDuration: 0)
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene, transition: transition)
                })
            }
        }
    
    }
    

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if touchedNode.name != "leftArrow" {
            leftArrow.colorBlendFactor = 0
            leftArrow.run(SKAction.scale(to: CGSize(width: self.frame.width / 5, height: self.frame.width / 5), duration: 0))
        }
        
        if touchedNode.name != "rightArrow" {
            rightArrow.colorBlendFactor = 0
            rightArrow.run(SKAction.scale(to: CGSize(width: self.frame.width / 5, height: self.frame.width / 5), duration: 0))
        }
        
        if touchedNode.name != "menuBtn" {
            menuBtn.texture = menuTextureUp
        }
        
        if touchedNode.name != "lvl1Btn" {
            lvl1Btn.colorBlendFactor = 0
            lvl1Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl2Btn" {
            lvl2Btn.colorBlendFactor = 0
            lvl2Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl3Btn" {
            lvl3Btn.colorBlendFactor = 0
            lvl3Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl4Btn" {
            lvl4Btn.colorBlendFactor = 0
            lvl4Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl5Btn" {
            lvl5Btn.colorBlendFactor = 0
            lvl5Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl6Btn" {
            lvl6Btn.colorBlendFactor = 0
            lvl6Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl7Btn" {
            lvl7Btn.colorBlendFactor = 0
            lvl7Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl8Btn" {
            lvl8Btn.colorBlendFactor = 0
            lvl8Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl9Btn" {
            lvl9Btn.colorBlendFactor = 0
            lvl9Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl10Btn" {
            lvl10Btn.colorBlendFactor = 0
            lvl10Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl11Btn" {
            lvl11Btn.colorBlendFactor = 0
            lvl11Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl12Btn" {
            lvl12Btn.colorBlendFactor = 0
            lvl12Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl13Btn" {
            lvl13Btn.colorBlendFactor = 0
            lvl13Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl14Btn" {
            lvl14Btn.colorBlendFactor = 0
            lvl14Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl15Btn" {
            lvl15Btn.colorBlendFactor = 0
            lvl15Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl16Btn" {
            lvl16Btn.colorBlendFactor = 0
            lvl16Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl17Btn" {
            lvl17Btn.colorBlendFactor = 0
            lvl17Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl18Btn" {
            lvl18Btn.colorBlendFactor = 0
            lvl18Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl19Btn" {
            lvl19Btn.colorBlendFactor = 0
            lvl19Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        if touchedNode.name != "lvl20Btn" {
            lvl20Btn.colorBlendFactor = 0
            lvl20Btn.size = CGSize(width: self.frame.width / 6, height: self.frame.width / 6)
        }
        
    }
    
}
