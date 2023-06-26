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
    
    var force: Double {
        Double.random(min: 0.5, max: 0.9)
    }
    var duration: Double {
        0
    }
    var delay: Double {
        0
    }
}

extension Animation {
    static func getAnimation() -> [Animation] {
        
        let preset = Animations.shared.preset
        let curve = Animations.shared.curve
        
    }
}
