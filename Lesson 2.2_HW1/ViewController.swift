//
//  ViewController.swift
//  Lesson 2.2_HW1
//
//  Created by Kostya on 13.03.2022.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var greenColorValueLabel: UILabel!
    @IBOutlet var blueColorValueLabel: UILabel!
    @IBOutlet var redColorValueLabel: UILabel!
    
   
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    
    private var currentRedValue:CGFloat = 0.81
    private var currentGreenValue:CGFloat = 0.44
    private var currentBlueValue:CGFloat  = 0.27
    private let currentViewAlpha:CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorValueLabel.text = String(format: "%.2f", currentRedValue)
        greenColorValueLabel.text = String(format: "%.2f", currentGreenValue)
        blueColorValueLabel.text = String(format: "%.2f", currentBlueValue)
        redColorSlider.value = Float(currentRedValue)
        greenColorSlider.value = Float(currentGreenValue)
        blueColorSlider.value = Float(currentBlueValue)
        
        colorView.layer.cornerRadius = 15
        refreshViewColor()
    }

    @IBAction func redSliderAction() {
        currentRedValue = CGFloat(redColorSlider.value)
        redColorValueLabel.text = String(format: "%.2f", currentRedValue)
        refreshViewColor()
    }
    
    @IBAction func greenSliderAction() {
        currentGreenValue = CGFloat(greenColorSlider.value)
        greenColorValueLabel.text = String(format: "%.2f", currentGreenValue)
        refreshViewColor()
    }
    
    @IBAction func blueSliderAction() {
        currentBlueValue = CGFloat(blueColorSlider.value)
        blueColorValueLabel.text = String(format: "%.2f", currentBlueValue)
        refreshViewColor()
    }
}

// MARK: -Private methods
extension ViewController {
    private func refreshViewColor() {
        colorView.backgroundColor = .init(
            red: currentRedValue,
            green: currentGreenValue,
            blue: currentBlueValue,
            alpha: currentViewAlpha
        )
    }
}
