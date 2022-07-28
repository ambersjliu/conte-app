//
//  CharPromptsController.swift
//  Conte
//
//  Created by Swift Admin on 2022-07-28.
//

import Foundation
import UIKit

class CharPromptsController:UIViewController{
    
    
    
    @IBOutlet weak var charButton: UIButton!
    @IBOutlet weak var promptButton: UIButton!
    @IBOutlet weak var promptLabel: UILabel!
    
    let promptList = ["CHARA giving CHARB a tattoo", "CHARA grading CHARB's homework", "CHARB baking a gingerbread man shaped like CHARA", "CHARB dressing CHARA's wounds", "CHARB offering CHARA an umbrella", "CHARA kissing CHARB on the hand", "CHARA and CHARB in your favourite fairy tale setting", "CHARA and CHARB as childhood friends", "CHARA and CHARB in an orchestra", "CHARA and CHARB as animals", "CHARA giving CHARB chemical burn", "CHARB as CHARA's bodyguard", "CHARB is a fugitive and CHARA is a vigilante", "CHARA karate-chopping CHARB for being clingy", "CHARA is a moth and CHARB is a lamp"]
    
    var charA = "CHARA"
    var charB = "CHARB"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePrompt()
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        updatePrompt()
    }
    
    
    @IBAction func addCharsPressed(_ sender: Any) {
        getNewChars()
        updatePrompt()
    }
    
    
    func updatePrompt(){
        let s = promptList.randomElement()
        promptLabel.text = s?.replacingOccurrences(of: "CHARA", with: charA).replacingOccurrences(of: "CHARB", with: charB)

    }
    
    func getNewChars(){
        let alert = UIAlertController(title: "Enter Characters", message: "These will be used in future prompts unless you change them", preferredStyle: .alert)
                alert.addTextField { (textField) in
                    textField.placeholder = "Character A"
                }

                alert.addTextField { (textField) in
                    textField.placeholder = "Character B"
                }

        alert.addAction(UIAlertAction(title: "Submit", style: .default, handler: { [self, weak alert] (_) in
                    if let textField = alert?.textFields?[0], let userText = textField.text {
                        self.charA = userText
                    }

                    if let textField = alert?.textFields?[1], let userText2 = textField.text {
                        charB = userText2
                    }
                }))

                self.present(alert, animated: true, completion: nil)
    }
    
}
