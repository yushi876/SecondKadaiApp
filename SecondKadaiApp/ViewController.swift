//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 田邊 湧志 on 2016/08/22.
//  Copyright © 2016年 田邊 湧志. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfield: UITextField! // テキストの入力内容
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.name = textfield.text
    }

    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    } // 戻り先

}

