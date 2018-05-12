//
//  ViewController.swift
//  balance
//
//  Created by 末利　花 on 2018/05/12.
//  Copyright © 2018年 末利　花. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start() {
        
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self,
                                         selector: #selector(self.up),
                                         userInfo: nil,
                                         repeats: true
            )
        }
    }

    @IBAction func stop() {
        
    }

}

