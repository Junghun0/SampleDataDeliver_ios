//
//  NaviFirstViewController.swift
//  SampleDataDeliver
//
//  Created by 박정훈 on 14/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class NaviFirstViewController : UIViewController{
    @IBOutlet weak var updateText: UILabel!
    @IBOutlet weak var intervalText: UILabel!
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var switchbtn: UISwitch!
    @IBOutlet weak var interval: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onSwitch(_ sender: UISwitch) {
        if(sender.isOn == true){
            self.updateText.text = "갱신함"
        }else{
            self.updateText.text = "갱신 안함"
        }
    }
    
    @IBAction func onInterval(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다 갱신"
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        guard let naviResult = self.storyboard?.instantiateViewController(withIdentifier: "NaviResultViewController") as? NaviResultViewController else{
            return
        }
        naviResult.paramEmail = self.emailText.text!
        naviResult.paramUpdate = self.switchbtn.isOn
        naviResult.paramInterval = self.interval.value
        
        self.navigationController?.pushViewController(naviResult, animated: true)
    }
    
    //manual segue
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationview = segue.destination
        
        guard let resultViewController = destinationview as? NaviResultViewController else{
            return
        }
        
        resultViewController.paramEmail = self.emailText.text!
        resultViewController.paramUpdate = self.switchbtn.isOn
        resultViewController.paramInterval = self.interval.value
    }
    
}
