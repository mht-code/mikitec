//
//  popupViewController.swift
//  quiz_season2
//
//  Created by 飯村美紀 on 2017/03/08.
//  Copyright © 2017年 miki. All rights reserved.
//

import UIKit

class popupViewController: UIViewController {
    
    
    @IBOutlet weak var popupView: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        /// レイアウトの初期設定をする
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).withAlphaComponent(0.6)
        popupView.layer.cornerRadius = 5
        popupView.layer.shadowOpacity = 0.8
        popupView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


        func showInView(_ aView: UIView!, withImage image : UIImage!,animated: Bool)
        {
            self.view.frame = aView.frame
            aView.addSubview(self.view)
            imageView!.image = image
            if animated
            {
                self.showAnimate()
            }
        }
        
        func showAnimate()
        {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
            UIView.animate(withDuration: 0.25,animations:{
                self.view.alpha = 1.0
                self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            });
        }
        
        func removeAnimate()
        {
            UIView.animate(withDuration: 0.25,animations:{
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
            }, completion:{(finished : Bool) in
                if(finished)
                {
                    self.view.removeFromSuperview()
                }
                });
        
    }


    
    @IBAction func close(_ sender: Any) {
    
        NotificationCenter.default.post(name: Notification.Name(rawValue: "NextQuestion"),object: nil)
        self.removeAnimate()
        
}
    

    
}
