//
//  Fanatastic.swift
//  FantasticView
//
//  Created by Tanay Shah on 09/02/17.
//  Copyright © 2017 Tanay Shah. All rights reserved.
//

import UIKit

class PPFantasticViewByPa: UIView
{
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        if #available(iOS 10.0, *) {
            let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
                UIView.animate(withDuration: 1.0) {
                    self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                    self.colorCounter+=1
                }
            }
            scheduledColorChanged.fire()
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        // You don't really need to implement this
    }
}
