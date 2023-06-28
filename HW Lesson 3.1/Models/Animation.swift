//
//  Animation.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 26.06.2023.
//

import UIKit

struct Animation {
    
    let preset: String
    let curve: String
    
    let force: Double
    let duration: Double
    let delay: Double
    
}

extension Animation {
    static func getAnimation() -> Animation {
        
        let preset = Animations.shared.preset
        let curve = Animations.shared.curve
        
            let currrentAnimation = Animation(
                preset: preset.randomElement() ?? "",
                curve: curve.randomElement() ?? "",
                force: Double.random(in: 1..<1.5),
                duration: Double.random(in: 1..<1.5),
                delay: Double.random(in: 0.5..<1)
            )
        return currrentAnimation
    }
 }
