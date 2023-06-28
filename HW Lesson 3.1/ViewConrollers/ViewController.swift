//
//  ViewController.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 26.06.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!

    @IBOutlet var arrayLabel: [UILabel]!
    
    private let currentAnimation = Animation.getAnimation()
    private let nextAnimation = Animation.getAnimation()
    
    
    @IBAction func animationButton(_ sender: UIButton) {
        
        
        
        animationView.getAnimationView()
        
    }
}

private extension SpringView {
    func getAnimationView() {
        
       let animationView = SpringView() //Не могу унаследоваться от массива
        animationView.animation = ""
        animationView.curve = ""
        animationView.force = 1
        animationView.duration = 1
        animationView.delay = 1
        animationView.animate()
    }
}

private extension ViewController {
    func getNameLabel(wich animation: [Animation]) {
        
        for (label, varible) in zip(arrayLabel, animation) {
            label.text = varible.preset
            label.text = varible.curve
            label.text = String(varible.force)
            label.text = String(varible.duration)
            label.text = String(varible.delay)
        }
    }
}



