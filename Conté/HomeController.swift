//
//  HomeController.swift
//  TestHome
//
//  Created by Swift Admin on 2022-07-26.
//

import Foundation
import UIKit

class HomeController:UIViewController{
    
    
    @IBOutlet weak var promptsBg: UIImageView!
    @IBOutlet weak var adder: UIButton!

    @IBOutlet weak var challengesBg: UIImageView!
    @IBOutlet weak var palettesBg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        promptsBg.layer.cornerRadius = 10
        palettesBg.layer.cornerRadius = 10
        challengesBg.layer.cornerRadius = 10
        adder.layer.cornerRadius = adder.frame.width / 2
        adder.layer.masksToBounds = true

    }
    


    
    
}
