//
//  ViewController.swift
//  FantasticView
//
//  Created by Tanay Shah on 27/02/17.
//  Copyright © 2017 Tanay Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let fantasticView = PPFantasticViewByPa(frame: self.view.bounds)
        
        self.view.addSubview(fantasticView)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

