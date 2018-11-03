//
//  GameScene.swift
//  Pong
//
//  Created by Azizur Rahman on 2018-06-05.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var ball = SKSpriteNode()
    var opponent = SKSpriteNode()
    var player = SKSpriteNode()
    var playerScore = Int()
    var opponentScore = Int()
    var enemyLbl = SKLabelNode()
    var playerLbl = SKLabelNode()
    
    override func didMove(to view: SKView) {
        
        // beginGame()
        
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        opponent = self.childNode(withName: "opponent") as! SKSpriteNode
        player = self.childNode(withName: "player") as! SKSpriteNode
        enemyLbl = self.childNode(withName: "enemyLbl") as! SKLabelNode
        playerLbl = self.childNode(withName: "playerLbl") as! SKLabelNode
        
        ball.physicsBody?.applyImpulse(CGVector(dx: -10, dy: -10))
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 1
        
        self.physicsBody = border
        
    }
    
    func beginGame() {
        playerScore = 0
        opponentScore = 0
        
        enemyLbl.text = "\(opponentScore)"
        playerLbl.text = "\(playerScore)"
    }
    
    func addScore(playerWhoWon: SKSpriteNode) {
        
        ball.position = CGPoint(x: 0, y: 0)
        ball.physicsBody?.velocity = CGVector(dx: 0, dy: 0)
        
        
        if playerWhoWon == player {
            playerScore += 1
            let randomX = Int(arc4random_uniform(10))
            let randomY = Int(arc4random_uniform(10))
            ball.physicsBody?.applyImpulse(CGVector(dx: randomX, dy: randomY))
            
        } else if playerWhoWon == opponent {
            opponentScore += 1
            let randomX = Int(arc4random_uniform(10))
            let randomY = Int(arc4random_uniform(10))
            ball.physicsBody?.applyImpulse(CGVector(dx: randomX, dy: randomY))
            
        }
        
        enemyLbl.text = "\(opponentScore)"
        playerLbl.text = "\(playerScore)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            player.run(SKAction.moveTo(x: location.x , duration: 0.2))
        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            player.run(SKAction.moveTo(x: location.x, duration: 0.2))
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendere
        opponent.run(SKAction.moveTo(x: ball.position.x, duration: 0.28))
        
        if ball.position.y <= player.position.y - 70 {
            addScore(playerWhoWon: opponent)
            
        } else if ball.position.y >= opponent.position.y + 70 {
            addScore(playerWhoWon: player)
        
        }
        
    }
}
