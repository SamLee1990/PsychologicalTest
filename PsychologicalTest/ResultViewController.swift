//
//  ResultViewController.swift
//  PsychologicalTest
//
//  Created by 李世文 on 2020/8/3.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var totalNumber: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if totalNumber <= 20{
            titleLabel.text = "你容易有『反社會人格』"
            contentLabel.text = """
反社會人格特質很容易對現狀產生不滿，生活中難免的小摩擦或是不如意都會讓你抱怨連連，彷彿全世界都對不起你一樣。感覺『處處碰壁』的你很容易情緒不穩定，你也很難克制自己一時的衝動，也很難有熱忱長期去從事同一件工作。

建議：當有不如意時，就適時換個環境，轉換並緩合一下起伏的心情。
"""
        }else if totalNumber > 20 && totalNumber <= 30 {
            titleLabel.text = "你容易有『邊緣性人格』"
            contentLabel.text = """
邊緣性人格特質的人好惡相當明顯，對喜歡的人或事物可以緊抓著死纏不放，對不喜歡的人或事物，則是極端厭惡，甚至展開毀滅性報復。尤其如果自己得不到的東西，更可能由愛生恨，想盡辦法去毀了他。所以你也是情殺事件的高危險群。

建議：感覺自己想法和旁人迥異時，記得靜下心來，思考並詢問對方為何如此做。
"""
        }else if totalNumber > 30 && totalNumber <= 40{
            titleLabel.text = "你容易有『邊緣性人格』"
            contentLabel.text = """
戲劇性人格特質型的人喜歡享受掌聲，害怕寂寞。也非常在意旁人對你的意見想法。你喜歡盡所能地去表現自己，也喜歡站在領導地位，對他人有支配欲，容易對人頤指氣使。有時過於依賴自己的想法去左右周遭，常得罪朋友而不自知。

建議：充實自我的專業技能，自可相得益彰，旁人對你也可由衷地心服口服。
"""
        }else{
            titleLabel.text = "你容易有『自戀性人格』"
            contentLabel.text = """
自戀性人格特質的人非常以自我為中心，旁人甚至包括情人都只算是紅花綠葉，你的陪襯點綴，很難有對等關係的存在。在自我優越感的意識作祟下，講話自然高姿態，對任何東西都喜歡指指點點，也無法忍受旁人出現對你權威的討戰。

建議：自戀無可厚非，可以多點自我解嘲式的幽默。記得尊重他人才有雙贏。
"""
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
