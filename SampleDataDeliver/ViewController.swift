//
//  ViewController.swift
//  SampleDataDeliver
//
//  Created by 박정훈 on 14/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var interval: UIStepper!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var isUpdate: UISwitch!
    @IBOutlet weak var intervalText: UILabel!
    @IBOutlet weak var isUpdateText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onSwitch(_ sender: UISwitch) {
        if(sender.isOn == true){
            self.isUpdateText.text = "갱신함"
        }else{
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        guard let resultView = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else{
            return
        }
        resultView.paramEmail = self.email.text!
        resultView.paramUpdate = self.isUpdate.isOn
        resultView.paramInterval = self.interval.value
        
        self.present(resultView,animated: true)
    }
}

