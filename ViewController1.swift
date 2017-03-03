import UIKit
class ViewController: UIViewController {
    @IBOutlet var TrickLabel:ColorWord!
    @IBOutlet var Option1Text:UILabel!
    @IBOutlet var Option2Text:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func ChangeWord(){
        TrickLabel.text = TrickLabel.GetNewText()
        TrickLabel.RandColorIndex = Int(arc4random_uniform(UInt32(TrickLabel.Rainbow.count)))
        switch(TrickLabel.RandColorIndex){
        case 0:
            TrickLabel.textColor = UIColor.red
            break;
        case 1:
            TrickLabel.textColor = UIColor.orange
            break;
        case 2:
            TrickLabel.textColor = UIColor.yellow
            break;
        case 3:
            TrickLabel.textColor = UIColor.green
            break;
        case 4:
            TrickLabel.textColor = UIColor.blue
            break;
        case 5:
            TrickLabel.textColor = UIColor.white
            break;
        default:
            TrickLabel.textColor = UIColor.red
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
