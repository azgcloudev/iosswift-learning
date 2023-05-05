import UIKit

class ViewController: UIViewController {

    // Labels outlets
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var highScoreLabel: UILabel!
    @IBOutlet var kenny1: UIImageView!
    @IBOutlet var kenny2: UIImageView!
    @IBOutlet var kenny3: UIImageView!
    @IBOutlet var kenny4: UIImageView!
    @IBOutlet var kenny5: UIImageView!
    @IBOutlet var kenny6: UIImageView!
    @IBOutlet var kenny7: UIImageView!
    @IBOutlet var kenny8: UIImageView!
    @IBOutlet var kenny9: UIImageView!

    // store the highscore value persistent
    let highScoreStored = UserDefaults.standard.object(forKey: "highscore")

    var timeCounter = 30

    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()

        timeLabel.text = "\(timeCounter)"

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
    }


    @objc func countDown() {

        timeCounter -= 1
        timeLabel.text = "\(timeCounter)"

        if (timeCounter == 0) {
            timeLabel.text = "0"

            timer.invalidate()
        }
    }


}

