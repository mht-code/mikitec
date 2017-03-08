//
//  ViewController.swift
//  Lesson5.count
//
//  Created by 飯村美紀 on 2017/02/28.
//  Copyright © 2017年 miki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count =  0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func countupBotton(_ sender: AnyObject) {
        if count == 10{
            return
        }
        
        
        count = count + 1
        countLabel.text = String(count)
        
    }
    
    @IBAction func countdownButton(_ sender: AnyObject) {
        
        if count == 0{
            return
        }
        
        
        count = count - 1
        countLabel.text = String(count)
        
    }
}




