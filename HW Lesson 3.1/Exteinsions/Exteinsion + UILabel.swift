//
//  Exteinsion + UILabel.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 29.06.2023.
//

import UIKit

var currentAnimation: Animation!

var labels: [UILabel]!

extension ViewController {
    func getNameLabel(wich animation: Animation) {
        
        let label = labels
        
        for index in 0...labels.count {
            
            label?[index].text = animation.preset
            label?[index].text = animation.curve
            label?[index].text = String(format: "%.1f", animation.force)
            label?[index].text = String(format: "%.1f", animation.duration)
            label?[index].text = String(format: "%.1f", animation.delay)
        }
    }
} 
