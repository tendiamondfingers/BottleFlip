//
//  Bottle.swift
//  BottleFlip
//
//  Created by Сергей Захаров on 05.11.2023.
//

import Foundation

final class Bottle {
    var Sprite: String?
    var Mass: NSNumber?
    var Resistance: NSNumber?
    var XScale: NSNumber?
    var YScale: NSNumber?
    var MinFlips: NSNumber?
    
    init(_ bottleDictionary: NSDictionary) {
        self.Sprite = bottleDictionary["Name"] as? String
        self.Mass = bottleDictionary["Mass"] as? NSNumber
        self.Resistance = bottleDictionary["Resistance"] as? NSNumber
        self.XScale = bottleDictionary["XScale"] as? NSNumber
        self.YScale = bottleDictionary["YScale"] as? NSNumber
        self.MinFlips = bottleDictionary["MinFlips"] as? NSNumber
    }
}
