//
//  HorseView.swift
//  SeparateTestBundle
//
//  Created by owel on 10/10/2024.
//

import UIKit
import iOSHelpers

public class HorseView: UIView, XibAsset {
    
    @IBOutlet weak var horseLabel: UILabel!
    @IBOutlet weak var horseStepper: UIStepper!
    
    @IBAction func horseStepperChanged(_ sender: Any) {
        let newFont = horseLabel.font.withSize(horseStepper.value)
        horseLabel.font = newFont
    }
}
