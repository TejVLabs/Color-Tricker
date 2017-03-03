import UIKit

class ColorWord: UILabel{
    var CurrentColor:UIColor!
    var CurrentText:String!
    var Rainbow = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    var RainbowText = ["Red", "Orange", "Yellow", "Green", "Blue", "White"]
    var CurrentColorIndex = 0
    var RandColorIndex = 0
    func GetNewText() -> String{
        CurrentColorIndex = Int(arc4random_uniform(UInt32(RainbowText.count)))
        return RainbowText[CurrentColorIndex]
    }
    
}
