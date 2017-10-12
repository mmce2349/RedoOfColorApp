//
//  SecondController.swift
//  RedoOfColorApp
//
//  Created by Mcentire, Mitchell on 10/12/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit
class SecondController : UIViewController
{
    lazy var colorTool : ColorTools = ColorTools()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.createRandomColor()
    }
}
