//
//  GenericCalibrationScreenView.swift
//  MyFit Solutions
//
//  Created by Jérémy Adoux on 19/03/2020.
//  Copyright © 2020 Myned. All rights reserved.
//

import UIKit
import ARKit

class GenericCalibrationScreenView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    let kCONTENT_XIB_NAME = "GenericCalibrationScreenView"
    
    var timerWaitingCalibration: Double?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed(kCONTENT_XIB_NAME, owner: self, options: nil)
        contentView.fixInView(self)
    }
    
    override func layoutSubviews() {
        
    }

}
