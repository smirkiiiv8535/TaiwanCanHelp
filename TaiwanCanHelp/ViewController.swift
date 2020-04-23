//
//  ViewController.swift
//  TaiwanCanHelp
//
//  Created by 林祐辰 on 2020/4/22.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit


let renderImages  = ["bear.png","Bluebird.png","cat.png","fish.png"]
let showLabel = ["Taiwan Number 1","HomeLand","Formosa","Well You Know"]
class ViewController: UIViewController {

    @IBOutlet weak var changeText: UILabel!
    
    @IBOutlet weak var changedSegment: UISegmentedControl!
    
    @IBOutlet weak var changedImage: UIImageView!
    
    var num = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      changedImage.image=UIImage(named: renderImages[num])
      changeText.text = showLabel[num]
      changedSegment.selectedSegmentIndex = num

    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        num = Int(sender.selectedSegmentIndex)
        changedImage.image=UIImage(named: renderImages[num])
        changeText.text = showLabel[num]
        
    }
    
    
    @IBAction func changeButton(_ sender: UIButton) {
        num = Int.random(in: 0...renderImages.count-1)
        changedSegment.selectedSegmentIndex = num
        changedImage.image=UIImage(named: renderImages[num])
        changeText.text = showLabel[num]
        
    }
    

}

