//
//  BottleController.swift
//  BottleFlip
//
//  Created by Сергей Захаров on 05.11.2023.
//

import Foundation

final class BottleController {
    
    class func readItems() -> [Bottle] {
        var bottles = [Bottle]()
        
        if let path = Bundle.main.path(forResource: "Items", ofType: "plist"), let plistArray = NSArray(contentsOfFile: path) as? [[String: Any]] {
            for item in plistArray {
                let bottle = Bottle(item as NSDictionary)
                bottles.append(bottle)
            }
        }
        return bottles
    }
    
    class func saveSelectedBottle(_ index: Int) {
        UserDefaults.standard.set(index, forKey: "selectedBottle")
        UserDefaults.standard.synchronize()
    }
    
    class func getSaveBottleIndex() -> Int {
        return UserDefaults.standard.integer(forKey: "selectedBottle")
    }
}
