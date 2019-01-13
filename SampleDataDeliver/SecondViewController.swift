//
//  SecondViewController.swift
//  SampleDataDeliver
//
//  Created by 박정훈 on 14/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : UIViewController{
    
    @IBOutlet weak var resultInterval: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultEmail: UILabel!
    
    var paramInterval: Double = 0
    var paramUpdate: Bool = false
    var paramEmail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
        
    }
    @IBAction func secondBackBtn(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
