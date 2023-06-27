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
        //let force = Double.random(in: 1..<1.5)
        //let duration = Double.random(in: 1..<1.5)
        //let delay = Double.random(in: 0.5..<1)
        
        for varible in 0...Animations.shared.preset.count {
            let oneAnimation = Animation(
                preset: preset[varible],
                curve: curve[varible],
                force = 1,
                duration = 1,
                delay = 1
            )
            animation.append(oneAnimation)
        }
        return animation
    }
}
