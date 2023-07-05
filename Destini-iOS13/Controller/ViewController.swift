//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var situtationLabel: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func choice1Pressed(_ sender: UIButton) {
        storyBrain.dochoice1()
        updateUI()
    }
    
    
    @IBAction func choice2Pressed(_ sender: UIButton) {
        storyBrain.dochoice2()
        updateUI()
    }
    
    func updateUI(){
        situtationLabel.text = storyBrain.getStoryText()
        choiceOneButton.setTitle(storyBrain.getChoice1(), for: .normal)
        choiceTwoButton.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}

