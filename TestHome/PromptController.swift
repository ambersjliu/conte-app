//
//  PromptController.swift
//  TestHome
//
//  Created by Swift Admin on 2022-07-27.
//

import Foundation
import UIKit

class PromptController:UIViewController{
    
    
    @IBOutlet weak var promptLabel: UILabel!
    
    
    var nouns = ["fairies", "jellyfish", "worms", "eyes", "dead birds", "telephone poles", "teacups", "your favourite celebrity", "knowledge", "a family of snakes", "someone with only one eye", "someone with three eyes", "a travelling salesperson", "a sorcerer", "a witch", "a male witch", "a bubbling cauldron", "a mermaid", "a walrus", "a butterfly", "an octopus", "your teacher", "yourself", "a loaf of bread", "an unlikely couple", "a Valentine's Day card", "a pair of shoes", "a snowman", "someone with insomnia", "a person with a cool tattoo", "a holiday personified", "a country personified", "your favourite food", "the ugliest baby ever", "a carton of eggs"]
    
    var verbs = ["painting", "dancing", "running", "eating a baguette", "getting a piercing", "surfing", "making soap", "gardening", "giving someone a tattoo", "crying themself to sleep", "washed up on the beach", "in a field at sunset", "making dinner for their spouse", "as a superhero", "living in a household appliance", "playing a musical instrument", "at a crime scene", "in front of a burning house", "doing the dishes in an apron", "underwater", "like they're melting", "in your favourite fictional world"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePrompt()
    }
    
    
    @IBAction func newPromptPressed(_ sender: Any) {
        updatePrompt()
    }
    
    func updatePrompt(){
        let newPrompt:String = "Draw " + nouns.randomElement()! + " " + verbs.randomElement()! + "."
        promptLabel.text = newPrompt
        
    }
    
}
