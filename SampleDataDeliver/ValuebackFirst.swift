//
//  ValuebackFirst.swift
//  SampleDataDeliver
//
//  Created by 박정훈 on 14/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class ValuebackFirst : UIViewController{
    
    @IBOutlet weak var resultInterval: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultEmail: UILabel!
    
    var paramEmail: String?
    var paramUpdate: Bool?
    var paramInterval: Double?
    
    override func viewWillAppear(_ animated: Bool) {
        if let email = paramEmail{
            resultEmail.text = email
        }
        if let update = paramUpdate{
            resultUpdate.text = update==true ? "자동갱신" : "자동갱신안함"
        }
        if let interval = paramInterval{
            resultInterval.text = "\(Int(interval))분마다 갱신"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
