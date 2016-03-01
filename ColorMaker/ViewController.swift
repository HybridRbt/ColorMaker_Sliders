//
//  ViewController.swift
//  ColorMaker
//
//  Created by Jason Schatz on 11/2/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeColorComponent(sender: AnyObject) {
        
        let r = setColor(redSwitch.on, whichSlider: redControl)
        let g = setColor(greenSwitch.on, whichSlider: greenControl)
        let b = setColor(blueSwitch.on, whichSlider: blueControl)
                
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
    func setColor(switchIsOn: Bool, whichSlider: UISlider) -> CGFloat {
        let colorValue : CGFloat
        
        if switchIsOn {
            colorValue = CGFloat(whichSlider.value)
            return colorValue
        } else {
            return 0
        }
    }
}

