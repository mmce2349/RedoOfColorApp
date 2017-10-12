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
        view.backgroundColor = createRandomColor()
        Button.setTitleColor(createRandomColor(), for: .normal)
        
    }
  
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
    
    
    private func createRandomColor() -> UIColor
    {
        let newColor : UIColor
        let redAmount = CGFloat (Double(arc4random_uniform(256))/255.00)
        let blueAmount = CGFloat (Double(arc4random_uniform(256))/255.00)
        let greenAmount = CGFloat (Double(arc4random_uniform(256))/255.00)
        newColor = UIColor(red: redAmount, green: greenAmount, blue: blueAmount, alpha: CGFloat(1.0))
        
        return newColor
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

