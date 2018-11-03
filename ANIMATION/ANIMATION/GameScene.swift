//
//  GameScene.swift
//  ANIMATION
//
//  Created by Azizur Rahman on 2018-06-30.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var dancingManiac = SKSpriteNode()
    var textureAtlas = SKTextureAtlas()
    var textures = [SKTexture]()
    
    override func didMove(to view: SKView) {
       
        textureAtlas = SKTextureAtlas(named: "Winner")
        
        for image in 0..<textureAtlas.textureNames.count {
            
            let name = "WinImages-\(image + 1).png"
            textures.append(SKTexture(imageNamed: name))
            
        }
        
        dancingManiac = SKSpriteNode(imageNamed: "WinImages-1.png")
        dancingManiac.size = CGSize(width: 166, height: 392)
        dancingManiac.position = CGPoint(x: 0, y: 0)
        self.addChild(dancingManiac)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        dancingManiac.run(SKAction.repeat(SKAction.animate(with: textures, timePerFrame: 0.05), count: 2))
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
