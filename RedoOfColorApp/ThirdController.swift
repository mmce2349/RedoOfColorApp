//
//  ThirdController.swift
//  RedoOfColorApp
//
//  Created by Mcentire, Mitchell on 10/16/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit



class ThirdController: UIViewController
{lazy var colorTool : ColorTools = ColorTools()

    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.createRandomColor()
    }
}
