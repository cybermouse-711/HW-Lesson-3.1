//
//  Animation.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 26.06.2023.
//

import UIKit
import SpringAnimation

struct Animation {
    
    let preset: String
    let curve: String
    
    let force: Double
    let duration: Double
    let delay: Double
    
}

extension Animation {
    static func getAnimation() -> [Animation] {
        
        var animation: [Animation] = []
        
        let preset = Animations.shared.preset.shuffled()
        let curve = Animations.shared.curve.shuffled()
        var force = 0.0
        var duration = 0.0
        var delay = 0.0
        
        for varible in 0...Animations.shared.preset.count {
            let currrentAnimation = Animation(
                preset: preset[varible],
                curve: curve[varible],
                force: force(Double.random(in: 1..<1.5)),
                duration: duration(Double.random(in: 1..<1.5)),
                delay: delay(Double.random(in: 0.5..<1))
            )
            animation.append(currrentAnimation)
        }
        return animation
    }
}
