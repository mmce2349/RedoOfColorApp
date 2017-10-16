//
//  ViewController.swift
//  RedoOfColorApp
//
//  Created by Mcentire, Mitchell on 10/10/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    lazy var colorTool : ColorTools = ColorTools()
    
    @IBOutlet weak var Button: UIButton!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var Switch: UISwitch!
    @IBOutlet weak var ImagePower: UIImageView!
    
    @IBAction func FirstMethod(_ sender: UIButton)
    {
        if (Button.backgroundColor == .white)
        {
            Button.backgroundColor = .black
        }
        else
        {
            Button.backgroundColor = .white
        }
        view.backgroundColor = colorTool.createRandomColor()
        Button.setTitleColor(colorTool.createRandomColor(), for: .normal)
        
    }
  
    //I dont know what to add.
    
    @IBAction func SwitchPower(_ sender: UISwitch)
    {
      if Switch.isOn
      {
        Button.isHidden = false
      }
    else
      {
        Button.isHidden = true
      }
    }
    
    
   
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

