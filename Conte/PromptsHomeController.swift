//
//  PromptsHomeController.swift
//  Conte
//
//  Created by Swift Admin on 2022-07-27.
//

import Foundation
import UIKit

class PromptsHomeController:UIViewController{
    
    @IBOutlet weak var charPromptsBg: UIImageView!
    @IBOutlet weak var genpromptsBg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genpromptsBg.layer.cornerRadius = 10
        charPromptsBg.layer.cornerRadius = 10
    }
    
}
