//
//  NaviResultViewController.swift
//  SampleDataDeliver
//
//  Created by 박정훈 on 14/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class NaviResultViewController: UIViewController{
    
    @IBOutlet weak var resultInterval: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultEmail: UILabel!
    
    var paramEmail: String = ""
    var paramUpdate: Bool = false
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultInterval.text = "\(Int(paramInterval))분마다 갱신"
        self.resultUpdate.text = (paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultEmail.text = paramEmail
    }
    @IBAction func naviResultBackbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
