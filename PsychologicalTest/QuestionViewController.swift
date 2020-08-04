//
//  QuestionViewController.swift
//  PsychologicalTest
//
//  Created by 李世文 on 2020/8/3.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    var questions = [Question]()
    var totalNumber = 0
    var qNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions = [
            Question(question: "你平常的作息是否十分不正常？", answers: [
                        "很正常，因為工作或上課的關係",
                        "不是很正常，早上需要鬧鐘叫醒",
                        "非常不正常，睡覺時間常常顛倒"
                     ], number: [1, 3, 5]),
            Question(question: "在朋友面前你是否常過度吹噓自己的能力？", answers: [
                        "不多，讓別人慢慢來瞭解自己",
                        "在有好感的人面前可能就會這樣",
                        "常常會這樣，也不知道怎麼才改得了",
                     ], number: [1, 3, 5]),
            Question(question: "你是否平時有暴飲暴食的習慣？", answers: [
                        "很少，三餐還算規律",
                        "不會，不過三餐時間有時不固定",
                        "會，看完食尚玩家就會想大吃一頓",
                     ], number: [1, 3, 5]),
            Question(question: "你喜不喜歡被人約束的感覺？", answers: [
                        "還好，只要合理都可以接受",
                        "不喜歡，可能會想反抗",
                        "不喜歡，可能直接撕破臉走人",
                     ], number: [1, 3, 5]),
            Question(question: "跟朋友相處你常有怎樣的困擾？", answers: [
                        "朋友很少，大家對我好像也不怎麼友善",
                        "很難有知心朋友可以傾吐心事",
                        "感覺在團體中都是自己配合別人",
                     ], number: [1, 3, 5]),
            Question(question: "看到朋友在一旁議論紛紛，你會有怎樣的反應？", answers: [
                        "應該不關我的事吧？！不管他",
                        "很好奇，會湊過去瞭解狀況",
                        "會不會是在講我的壞話？",
                     ], number: [1, 3, 5]),
            Question(question: "最受不了什麼類型的朋友？", answers: [
                        "自私自利，一毛不拔的朋友",
                        "死不認錯，又愛推卸責任的朋友",
                        "情緒相當不穩定的朋友"
                     ], number: [1, 3, 5]),
            Question(question: "遇到有好感的人，你通常會有怎樣的反應？", answers: [
                        "跟蹤他，調查他的所有一切",
                        "製造巧合偶遇，增加見面的機會",
                        "會在心理幻想他是自己的男/女朋友",
                     ], number: [1, 3, 5]),
            Question(question: "假如已經有了另一半，允不允許自己有出軌的可能？", answers: [
                        "可能，保留自己談戀愛交朋友的權利",
                        "會去認識他，做做朋友應該沒關係",
                        "只可能心動，絕不可能有任何發展",
                     ], number: [1, 3, 5]),
            Question(question: "想到什麼會令你最控制不住自己的情緒？", answers: [
                        "工作或課業上的壓力",
                        "人際關係產生的壓力",
                        "感情問題產生的壓力",
                     ], number: [1, 3, 5]),
        ]
        
        questionLabel.text = questions[0].question
        for (i, answerButton) in answerButtons.enumerated() {
            answerButton.setTitle(questions[0].answers[i], for: UIControl.State.normal)
        }
        
    }
    

    @IBAction func aswerChoiceButton(_ sender: UIButton) {
        //加分數
        if let numStr = sender.restorationIdentifier,
           let num = Int(numStr){
                totalNumber += num
        }
        //加題數
        qNumber += 1
        if qNumber < 10 {
            //改畫面
            questionLabel.text = questions[qNumber].question
            for (i, answerButton) in answerButtons.enumerated() {
                answerButton.setTitle(questions[qNumber].answers[i], for: UIControl.State.normal)
            }
        }
            
    }
    
    @IBSegueAction func showResultSegue(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.totalNumber = totalNumber
        return controller
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if qNumber == 10 {
            return true
        }else{
            return false
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
