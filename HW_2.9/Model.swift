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
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat

    
    static func getAnimations() -> [Animation]{
        var animations = [Animation]()
        let presetEnum = Spring.AnimationPreset.allCases
        let curveEnum = Spring.AnimationCurve.allCases
        
        for (preset, curve) in zip(presetEnum, curveEnum) {
            let animModel = Animation(preset: preset.rawValue,
                                      curve: curve.rawValue,
                                      force: CGFloat.random(in: 0...1),
                                      duration: CGFloat.random(in: 0...1),
                                      delay: CGFloat.random(in: 0...1))
            animations.append(animModel)
            
        }
        
        return animations
    }
    
}
