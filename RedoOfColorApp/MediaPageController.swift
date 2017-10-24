//
//  MediaPageController.swift
//  RedoOfColorApp
//
//  Created by Mcentire, Mitchell on 10/24/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit
import AVFoundation

class MediaPageController: UIViewController
{
    @IBOutlet weak var ImageFrame: UIImageView!
    @IBOutlet weak var ImageButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var soundSlider: UISlider!
    private var soundPlayer: AVAudioPlayer?
    private var imageCounter: Int = 0
    private lazy var color : ColorTools = ColorTools()
    
    @IBAction func NextImage(_ sender: Any)
    {
        switchImage()
    }
    private func switchImage()
    {
        if (imageCounter > 3)
        {
            imageCounter=0
        }
        if (imageCounter == 0)
        {
            ImageFrame.image = UIImage(named: "Photo on 9-6-17 at 8.56 AM")
        }
        else if (imageCounter == 1)
        {
            ImageFrame.image = UIImage(named: "Photo on 10-24-17 at 8.13 AM")
        }
        else if (imageCounter == 2)
        {
            ImageFrame.image = UIImage(named: "Crying gir")
        }
        else if (imageCounter == 3)
        {
            ImageFrame.image = UIImage(named: "GIR")
        }
        else
        {
            ImageFrame.image = UIImage(named: "BaldMan")
        }
        imageCounter += 1
    }
    
}
