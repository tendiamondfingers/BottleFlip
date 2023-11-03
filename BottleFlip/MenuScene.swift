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
        let logo = SKSpriteNode(imageNamed: "logo")
        logo.position = CGPoint(x: self.frame.midX, y: self.frame.maxY - 120)
        logo.xScale = 1
        logo.yScale = 1
        self.addChild(logo)
    }
    
    
}
