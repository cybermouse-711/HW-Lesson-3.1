//
//  Extension + Label.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 29.06.2023.
//

import UIKit

extension ViewController {
    func getNameLabel(wich animation: Animation) {
        
        let label = arrayLabel
        
        for index in 0...arrayLabel.count {
            
            label?[index].text = currentAnimation.preset
            label?[index].text = currentAnimation.curve
            label?[index].text = String(format: "%.1f", currentAnimation.force)
            label?[index].text = String(format: "%.1f", currentAnimation.duration)
            label?[index].text = String(format: "%.1f", currentAnimation.delay)
        }
    }
}
