//
//  ViewController.swift
//  app
//
//  Created by User21 on 2019/4/11.
//  Copyright © 2019 app. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var start: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var lucky: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var myTest: UITextField!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var myDatePickerValue: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"123-1")!)
    }


    @IBAction func keyboard(_ sender: UITextField) {
    }
    
    @IBAction func myDatePickerAction(_ sender: UIDatePicker) {
        let dateValue = DateFormatter()
        dateValue.dateFormat = "yyyy-MM-dd"
        myTest.text = dateValue.string(from: myDatePickerValue.date)
    }
    
    @IBAction func match(_ sender: UIButton) {
        var num = myTest.text?.split(separator: "-")
        var ss = num![0]+num![1]+num![2]
        var sum = 0
        for _ in 0...7{
            var a = ss.popLast()
            sum = sum + Int(String(a!))!
        }
        let first = sum/10
        let second = sum%10
        let total = first+second
        if total == 10 || total == 1{
            text.text = "這 是 個 熱 愛 生 命 ， 喜 歡 開 創 新 奇 事 物 的 表 征 。"
            image.image = UIImage(named: "no1.jpg")
        }
        if total == 11 || total == 2{
            text.text = " 你 可 以 是 位 有 耐 性 、 合 作 性 佳 、 值 得 信 賴 、 忠 誠 度 高 、 通 融 性 高 、 敏 感 和 謹 慎 的 人 。"
            image.image = UIImage(named: "no2.png")
        }
        if total == 3{
            text.text = "你 非 常 具 有 創 造 力 、 樂 觀 、 活 潑 外 向 ， 並 且 善 長 於 激 發 他 人 、 溝 通 良 好 、 關 心 他 人 、 適 應 力 強 。"
            image.image = UIImage(named: "no3.png")
        }
        if total == 4{
            text.text = "你 非 常 的 干 凈 俐 落 、 有 效 率 、 樂 於 助 人 、 集 中 精 力 且 勤 奮 工 作 。 思 維 邏 輯 、 行 為 舉 止 誠 懇 、 忠 心 且 信 守 承 諾 。"
            image.image = UIImage(named: "no4.jpeg")
        }
        if total == 5{
            text.text = "你 相 當 的 慧 黠 聰 穎 、 競 爭 能 力 強 、 多 才 多 藝 、 具 吸 引 力 、 友 善 熱 情 、 敏 感 受 歡 迎 。 你 喜 歡 新 鮮 事 物 、 永 於 接 受 改 變 、 也 容 易 成 功 。"
            image.image = UIImage(named: "no5.jpeg")
        }
        if total == 6{
            text.text = "你 能 夠 慈 悲 為 懷 、 深 具 愛 心 、 富 創 造 力 、 寬 容 慷 慨 、 設 身 處 地 為 他 人 著 想 。"
            image.image = UIImage(named: "no6.jpg")
        }
        if total == 7{
            text.text = "通 常 你 非 常 的 謙 和 、 誠 實 且 有 智 慧 ， 擅 長 給 予 建 議 。"
            image.image = UIImage(named: "no7.jpg")
        }
        if total == 8{
            text.text = "你 具 有 超 人 的 商 業 頭 腦 、 聰 明 練 達 、 深 具 信 心 和 決 斷 力 ， 擁 有 一 切 成 就 大 事 業 的 領 導 特 質 。"
            image.image = UIImage(named: "no8.jpeg")
        }
        if total == 9{
            text.text = "你 是 天 生 的 創 意 家 與 心 靈 導 師 。"
            image.image = UIImage(named: "no9.jpeg")
        }
        image.alpha = CGFloat(slider.value*0.1)
    }
    
    @IBAction func luckyButton(_ sender: UIButton) {
        var number = Int.random(in: 0...100)
        lucky.text = String(number)
    }
    @IBAction func Rslider(_ sender: UISlider) {
        sender.value.round()
        numberLabel.text = Int(sender.value).description
        image.alpha = CGFloat(sender.value*0.1)
    }
}

