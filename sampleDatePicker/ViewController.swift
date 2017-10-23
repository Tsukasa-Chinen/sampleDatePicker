//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by Tsukasa Chinen on 2017/10/23.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // DateFormatterで文字型から日付型に変換する
        // letはプロパティを変えるのはOK
        let df = DateFormatter();
        df.dateFormat = "yyyy/MM/dd";

        // 選択可能な最小値を設定（例：2017/01/01）
        myDatePicker.minimumDate = df.date(from: "2017/01/01")

        // 選択可能な最大値を設定（例：2017/12/31）
        myDatePicker.maximumDate = df.date(from: "2017/12/31")

        // DatePickerの初期値を設定
        // ERROR Example:myDatePicker.date = "2017/10/01";
        myDatePicker.date = df.date(from: "2017/10/01")!
        
    }

    // Trigger: 日付が選択された時
    @IBAction func changeDate(_ sender: UIDatePicker) {
        //print(sender.date);
        let df = DateFormatter();
        df.dateFormat = "yyyy/MM/dd";
        
        // 時差を補正する（日本時間に合わせる）
        df.locale = Locale(identifier: "ja_JP");
        print(df.string(from: sender.date));
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

