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

    var currentScore = 0

    // store the highscore value persistent
    let highScoreStored = UserDefaults.standard.object(forKey: "highscore")

    var timeCounter = 30

    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()

        timeLabel.text = "\(timeCounter)"

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)

        let kennyImageArr = [kenny1, kenny2, kenny3, kenny4, kenny5, kenny6, kenny7, kenny8, kenny9]

        // creates the gesture
        let gestureTap1 = UITapGestureRecognizer(target: self, action: #selector(addScore))
        let gestureTap2 = UITapGestureRecognizer(target: self, action: #selector(addScore))
        let gestureTap3 = UITapGestureRecognizer(target: self, action: #selector(addScore))
        let gestureTap4 = UITapGestureRecognizer(target: self, action: #selector(addScore))
        let gestureTap5 = UITapGestureRecognizer(target: self, action: #selector(addScore))
        let gestureTap6 = UITapGestureRecognizer(target: self, action: #selector(addScore))
        let gestureTap7 = UITapGestureRecognizer(target: self, action: #selector(addScore))
        let gestureTap8 = UITapGestureRecognizer(target: self, action: #selector(addScore))
        let gestureTap9 = UITapGestureRecognizer(target: self, action: #selector(addScore))

        // enable gestures in the images
        for kenny in kennyImageArr {
            enableUserInteraction(image: kenny!)
        }
        
        addGesture(gesture: gestureTap1, to: kenny1)
        addGesture(gesture: gestureTap2, to: kenny2)
        addGesture(gesture: gestureTap3, to: kenny3)
        addGesture(gesture: gestureTap4, to: kenny4)
        addGesture(gesture: gestureTap5, to: kenny5)
        addGesture(gesture: gestureTap6, to: kenny6)
        addGesture(gesture: gestureTap7, to: kenny7)
        addGesture(gesture: gestureTap8, to: kenny8)
        addGesture(gesture: gestureTap9, to: kenny9)

    }


    @objc func countDown() {

        timeCounter -= 1
        timeLabel.text = "\(timeCounter)"

        if (timeCounter == 0) {
            timeLabel.text = "0"

            timer.invalidate()
        }
    }

    // function to enable user interaction for the images view
    func enableUserInteraction(image: UIImageView) {
        image.isUserInteractionEnabled = true
    }


    // adds the gesture to the image
    func addGesture(gesture: UIGestureRecognizer, to image: UIImageView) {
        image.addGestureRecognizer(gesture)
    }


    @objc func addScore() {
        currentScore += 1
        scoreLabel.text = "Score: \(currentScore)"
        print(currentScore)
    }


}

