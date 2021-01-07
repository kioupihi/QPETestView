//
//  MyPod.swift
//  MyPod
//
//  Created by quentin perrier on 06/01/2021.
//

import UIKit
//import ARKit

public class QPETestView: UIView {
    var label = UILabel()

    override public func layoutSubviews() {
        super.layoutSubviews()
        let frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        label.frame = frame
        
        label.text = "Coucou marcel"
        
        self.addSubview(label)
    }
}
