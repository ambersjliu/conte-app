//
//  ChallengeController.swift
//  TestHome
//
//  Created by Swift Admin on 2022-07-27.
//

import Foundation
import UIKit

class challengeController:UIViewController{
    
    @IBOutlet weak var challengeLabel: UILabel!
    
    
    let challenges = ["Draw with your eyes closed", "Draw with your non-dominant hand", "Draw with the reference image upside-down", "Draw without lifting your pencil", "Incorporate household materials into your work", "Draw using a box of Crayola crayons", "Try and blend Picasso and Van Gogh's styles", "Take inspiration from Japanese woodblock prints", "Take inspiration from Chinese ink paintings", "Use the shades and tints of only one colour", "Use only three colours", "Have someone draw a random shape, and make something from it", "Draw the same thing four times, each time with a different palette", "Draw something using pointillism", "Create a collage from magazines and newspapers", "Create something with clay", "Create something with impasto", "Make homemade scratch art with crayons and black paint", "Draw with white on a black canvas", "Draw a reference photo if it were out of focus", "Draw 5 different animals in silhouette"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateChallenge()
    }
    
    @IBAction func newChallengePressed(_ sender: Any) {
        updateChallenge()
    }
    
    func updateChallenge(){
        challengeLabel.text = challenges.randomElement()
    }
}
