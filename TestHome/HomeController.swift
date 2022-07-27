//
//  HomeController.swift
//  TestHome
//
//  Created by Swift Admin on 2022-07-26.
//

import Foundation
import UIKit

class HomeController:UIViewController{
    
    
    @IBOutlet weak var header: UINavigationItem!
    @IBOutlet weak var adder: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        adder.layer.cornerRadius = adder.frame.width / 2
        adder.layer.masksToBounds = true
        
    }
    
    
    
}
