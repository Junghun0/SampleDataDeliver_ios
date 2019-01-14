//
//  ValuebackSecond.swift
//  SampleDataDeliver
//
//  Created by 박정훈 on 14/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class ValuebackSecond: UIViewController{
    
    @IBOutlet weak var inputInterval: UILabel!
    @IBOutlet weak var inputUpdate: UILabel!
    @IBOutlet weak var inputEmail: UITextField!
    
    @IBOutlet weak var secondStepper: UIStepper!
    @IBOutlet weak var secondSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func secondSubmitBtn(_ sender: Any) {
        let valuebackfirst = self.presentingViewController
        guard let previewcontroller = valuebackfirst as? ValuebackFirst else{
            return
        }
        
        previewcontroller.paramEmail = self.inputEmail.text
        previewcontroller.paramInterval = self.secondStepper.value
        previewcontroller.paramUpdate = self.secondSwitch.isOn
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
