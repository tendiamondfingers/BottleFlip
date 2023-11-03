//
//  MenuScene.swift
//  BottleFlip
//
//  Created by Сергей Захаров on 03.11.2023.
//

import SpriteKit

class MenuScene: SKScene {
    
    var highScore = 0
    
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
        
       let bestScoreLabelNode = LabelNode(
        text: "Best result: ",
        fontSize: 20,
        position: CGPoint(x: self.frame.midX - 100, y: self.frame.maxY - 250),
        fontColor: .purple
       )
        self.addChild(bestScoreLabelNode)
        
        let highScoreLabelNode = LabelNode(
            text: highScore.formatted(),
            fontSize: 50,
            position: CGPoint(x: self.frame.midX - 110, y: self.frame.maxY - 300),
            fontColor: .purple
        )
        self.addChild(highScoreLabelNode)
        
    }
}
