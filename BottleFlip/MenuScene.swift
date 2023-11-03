//
//  MenuScene.swift
//  BottleFlip
//
//  Created by Сергей Захаров on 03.11.2023.
//

import SpriteKit

class MenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = .systemCyan
        
        setupUI()
    }
    
    func setupUI() {
        let logo = ButtonNode(
            imageNode: "logo",
            position: CGPoint(x: self.frame.midX, y: self.frame.maxY - 120),
            xScale: 0.7,
            yScale: 0.7
        )
        self.addChild(logo)
        
        let bestScoreLabelNode = SKLabelNode(fontNamed: "Menlo")
        bestScoreLabelNode.position = CGPoint(x: self.frame.midX - 100, y: self.frame.maxY - 230)
        bestScoreLabelNode.text = "Best result: "
        bestScoreLabelNode.fontSize = 20
        bestScoreLabelNode.fontColor = .purple
        
        self.addChild(bestScoreLabelNode)
        
    }
}
