//
//  GameScene.swift
//  SKButton
//
//  Created by Giovanni Luidi Bruno on 23/03/21.
//

import SpriteKit

class GameScene: SKScene {
    
  
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        let myButton = SKButton()
        myButton.position = CGPoint(x: frame.midX, y: frame.midY)
        myButton.color = .red
        myButton.size = CGSize(width: 200, height: 200)
        myButton.isUserInteractionEnabled = true
        
        addChild(myButton)
    }
    
}
