//
//  MenuScene.swift
//  BottleFlip
//
//  Created by Сергей Захаров on 03.11.2023.
//

import SpriteKit

final class MenuScene: SKScene {
    
    var playButtonNode = SKSpriteNode()
    var tableNode = SKSpriteNode()
    var bottleNode = SKSpriteNode()
    var leftButtonNode = SKSpriteNode()
    var rightButtonNode = SKSpriteNode()
    
    var highScore = 0
    var totalFlips = 0
    var bottles = [Bottle]()
    var selectedBottleIndex = 0
    
    override func didMove(to view: SKView) {
        self.backgroundColor = .systemCyan
        
        bottles = BottleController.readItems()
        
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
        text: "Best result",
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
        
        let totalFlipsLabelNode = LabelNode(
         text: "Total flips",
         fontSize: 20,
         position: CGPoint(x: self.frame.midX + 100, y: self.frame.maxY - 250),
         fontColor: .purple
        )
        self.addChild(totalFlipsLabelNode)
        
        let flipsCountLabelNode = LabelNode(
            text: totalFlips.formatted(),
            fontSize: 50,
            position: CGPoint(x: self.frame.midX + 110, y: self.frame.maxY - 300),
            fontColor: .purple
        )
        self.addChild(flipsCountLabelNode)
        
        playButtonNode = ButtonNode(
            imageNode: "play_button",
            position: CGPoint(x: self.frame.midX, y: self.frame.midY - 15),
            xScale: 0.9,
            yScale: 0.9
        )
        self.addChild(playButtonNode)
        
        tableNode = ButtonNode(
            imageNode: "table",
            position: CGPoint(x: self.frame.midX, y: self.frame.minY + 60),
            xScale: 0.45,
            yScale: 0.45
        )
        tableNode.zPosition = 3
        self.addChild(tableNode)
        
        selectedBottleIndex = BottleController.getSaveBottleIndex()
        let selectedBottle = bottles[selectedBottleIndex]
        
        bottleNode = SKSpriteNode(imageNamed: selectedBottle.Sprite!)
        bottleNode.zPosition = 10
        self.addChild(bottleNode)
        
        //left button
        leftButtonNode = ButtonNode(
            imageNode: "left_button",
            position: CGPoint(x: self.frame.midX + leftButtonNode.size.width - 110, y: self.frame.minY - leftButtonNode.size.height + 200),
            xScale: 1.2,
            yScale: 1.2
        )
        self.changeButon(leftButtonNode, state: false)
        self.addChild(leftButtonNode)
        
        rightButtonNode = ButtonNode(
            imageNode: "right_button",
            position: CGPoint(x: self.frame.midX + rightButtonNode.size.width + 110, y: self.frame.minY - rightButtonNode.size.height + 200),
            xScale: 1.2,
            yScale: 1.2
        )
        self.changeButon(rightButtonNode, state: true)
        self.addChild(rightButtonNode)
        
        self.updateSelectedBottle(selectedBottle)
        
    }
    
    private func changeButon(_ buttonNode: SKSpriteNode, state: Bool) {
        var buttonColor = UIColor.gray.withAlphaComponent(0.3)
        
        if state {
            buttonColor = .gray
        }
        
        buttonNode.color = buttonColor
        buttonNode.colorBlendFactor = 1
    }
    
   private func updateSelectedBottle(_ bottle: Bottle) {
        let spriteName = SKTexture(imageNamed: bottle.Sprite!)
        
        bottleNode.size = CGSize(
            width: bottleNode.texture!.size().width * CGFloat(bottle.XScale!.floatValue),
            height: bottleNode.texture!.size().height * CGFloat(bottle.YScale!.floatValue))
        
        bottleNode.position = CGPoint(x: self.frame.midX, y: self.frame.minY + bottleNode.size.height / 2 + 126)
        
        self.updateArrowsState()
    }
    
    private func updateArrowsState() {
        
    }
}
