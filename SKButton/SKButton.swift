//
//  SKButton.swift
//  SKButton
//
//  Created by Giovanni Luidi Bruno on 23/03/21.
//

import SpriteKit

class SKButton: SKSpriteNode {
    
    var coolDownTime: TimeInterval = 2.0
    var isReady: Bool = true
    private var originalColor: UIColor = .red
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if isReady {
            print("This button was touched")
            originalColor = color
            color = .gray
            isReady = false
            let waitAction = SKAction.wait(forDuration: coolDownTime)
            run(waitAction) { [weak self] in
                self?.isReady = true
                self?.color = self?.originalColor ?? .blue
            }
        }
    }
    
}
