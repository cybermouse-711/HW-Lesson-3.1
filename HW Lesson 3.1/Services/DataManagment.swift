//
//  DataManagment.swift
//  HW Lesson 3.1
//
//  Created by Елизавета Медведева on 26.06.2023.
//

final class Animations {
    
    static let shared = Animations()
    
    let preset = ["pop", "fadeIn", "shake", "squeeze", "wobble"]
    let curve = ["linear", "spring", "easeIn"]
    
    private init() {}
}
