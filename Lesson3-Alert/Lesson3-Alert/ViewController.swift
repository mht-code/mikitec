//
//  ViewController.swift
//  Lesson3-Alert
//
//  Created by 飯村美紀 on 2017/02/28.
//  Copyright © 2017年 miki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var alert:UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //アラートコントローラーを作成する。
        alert = UIAlertController(title: "確認", message: "次の画面に移動します。", preferredStyle: UIAlertControllerStyle.alert)
        
        //「続けるボタン」のアラートアクションを作成する。
        let alertAction = UIAlertAction(
            title: "続ける",
            style: UIAlertActionStyle.default,
            handler: { action in
                
                //ストリーボードにある遷移先ビューコントローラーを取得する。
                let storyboard: UIStoryboard = self.storyboard!
                let nextView = storyboard.instantiateViewController(withIdentifier: "next")
                self.present(nextView, animated: true, completion: nil)
                
            })
        
        
        //「キャンセルボタン」のアラートアクションを作成する。
        let alertAction2 = UIAlertAction(
            title: "キャンセル",
            style: UIAlertActionStyle.cancel,
            handler: nil
        )
        
        //アラートアクションを追加する。
        alert.addAction(alertAction)
        alert.addAction(alertAction2)
        
    }
    
    
    //ボタン押下時の呼び出しメソッド
    @IBAction func pushButton(sender: UIButton) {
        //アラートコントローラーを表示する。
        self.present(alert, animated: true, completion:nil)
    }
 }
