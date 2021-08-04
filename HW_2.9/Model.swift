//
//  Model.swift
//  HW_2.9
//
//  Created by emmisar on 04.08.2021.
//

import Spring

struct Animation {

    let preset: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Float
    
    static func getAnimations() -> [Animation]{
        var animations = [Animation]()
        
        for anim in Spring.AnimationPreset {
            
        }
        
    }
    
}
