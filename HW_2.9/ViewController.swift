//
//  ViewController.swift
//  HW_2.9
//
//  Created by emmisar on 03.08.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var nameAnimationOnView: UILabel!
    @IBOutlet var startAnimationButton: SpringButton!
    
    let animations = Animation.getAnimations()
    var currentModel: Animation!
    var futureModel: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentModel = animations.first
        futureModel = animations.last
        
        setTitles()
    }

    @IBAction func runAnimation(_ sender: SpringButton) {
        animationView.animation = currentModel.preset
        animationView.curve = currentModel.curve
        animationView.delay = currentModel.delay
        animationView.force = currentModel.force
        animationView.duration = currentModel.duration
        
        animationView.animate()
        
        currentModel = futureModel
        futureModel = animations.randomElement()
        
        setTitles()
    }
    
    private func setTitles() {
        nameAnimationOnView.text = """
            Preset: \(currentModel.preset) \n
            Curve: \(currentModel.curve) \n
            Delay: \(round(currentModel.delay * 100)/100) \n
            Duration: \(round(currentModel.duration)/100) \n
            Force: \(round(currentModel.force)/100) \n
"""
        
        startAnimationButton.setTitle(futureModel.preset, for: .normal)
    }
}

