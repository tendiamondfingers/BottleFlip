//
//  LabelNode.swift
//  BottleFlip
//
//  Created by Сергей Захаров on 03.11.2023.
//

import SpriteKit

final class LabelNode: SKLabelNode {
    
    convenience init(text: String, fontSize: CGFloat, position: CGPoint, fontColor: UIColor) {
        self.init(fontNamed: fontMenlo)
        
        self.text = text
        self.fontSize = fontSize
        self.position = position
        self.fontColor = fontColor
        
    }
}

