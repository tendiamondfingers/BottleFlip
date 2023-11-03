//
//  ButtonNode.swift
//  BottleFlip
//
//  Created by Сергей Захаров on 03.11.2023.
//

import SpriteKit

class ButtonNode: SKSpriteNode {
        
    var originalScale: CGFloat = 0
    
    init(imageNode: String, position: CGPoint, xScale: CGFloat, yScale: CGFloat) {
        
        let texture = SKTexture(imageNamed: imageNode)
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
        
        self.position = position
        self.xScale = xScale
        self.yScale = yScale
        self.originalScale = xScale
        
        buttonAnimation()
    }
    
    func buttonAnimation() {
        let scaleDownAction = SKAction.scale(to: 0, duration: 0.1)
        let scaleUpAction = SKAction.scale(to: originalScale, duration: 0.7)
        let sequence = SKAction.sequence([scaleDownAction, scaleUpAction])
        
        self.run(sequence)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
