//
//  ViewController.swift
//  ColorMix
//
//  Created by SD on 08/12/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var Reset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 30
        colorView.layer.borderColor =
           UIColor.black.cgColor
        updateColor()
        colorView.backgroundColor = .black
        
    }
    
    @IBAction func sliderChanged(_ sender:UISwitch ) {
        updateColor()
        
    }
    
    @IBAction func switchChanged(_ sender: Any) {
        updateColor()
    }
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green,
                            blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    @IBAction func reset(_ sender: Any) {
        redSwitch .isOn = false
        greenSwitch . isOn = false
        blueSwitch .isOn = false
        redSlider .value = 0
        greenSlider .value = 0
        blueSlider .value = 0
        updateColor()
    }
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
}
