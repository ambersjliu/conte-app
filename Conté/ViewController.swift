//
//  ViewController.swift
//  TestHome
//
//  Created by Swift Admin on 2022-07-25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var shadeView1: UIView!
    @IBOutlet weak var shadeView2: UIView!
    @IBOutlet weak var shadeView3: UIView!
    @IBOutlet weak var lightView1: UIView!
    @IBOutlet weak var lightView2: UIView!
    
    
    @IBOutlet weak var shade1: UILabel!
    @IBOutlet weak var shade2: UILabel!
    @IBOutlet weak var shade3: UILabel!
    @IBOutlet weak var light1: UILabel!
    @IBOutlet weak var light2: UILabel!
    
    //how the heck do i declare the array out here!!!
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewArr: [UIView?] = [shadeView1, shadeView2, shadeView3, lightView1, lightView2]
        for i in 0...viewArr.count-1{
            viewArr[i]?.layer.cornerRadius = 10
        }
        changeAllColours()
        changeAllLabels()
        
        

        // Do any additional setup after loading the view.
        
    }
    
    func setViewColour(v:UIView?, lower:Double, higher:Double){
        let red = CGFloat.random(in: lower...higher)
        let green = CGFloat.random(in: lower...higher)
        let blue = CGFloat.random(in: lower...higher)
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        v?.backgroundColor = color
        
    }
    
    
    //probably a better way of doing this but this is temp and also under the assumption that there's only 5 colours
    @IBAction func newPressed(_ sender: Any) {
        changeAllColours()
        changeAllLabels()
    }
    
    //these are really crummy methods for now, if i figure out how to put these into arrays it's over for you all
    func changeAllColours(){
        setViewColour(v: shadeView1, lower: 0.0, higher: 0.2)
        setViewColour(v: shadeView2, lower: 0.2, higher: 0.4)
        setViewColour(v: shadeView3, lower: 0.4, higher: 0.6)
        setViewColour(v: lightView1, lower: 0.6, higher: 0.8)
        setViewColour(v: lightView2, lower: 0.8, higher: 1.0)
    }
    
    func changeAllLabels(){
        shade1.text = shadeView1.backgroundColor?.hexString
        shade2.text = shadeView2.backgroundColor?.hexString
        shade3.text = shadeView3.backgroundColor?.hexString
        light1.text = lightView1.backgroundColor?.hexString
        light2.text = lightView2.backgroundColor?.hexString
    }
}

