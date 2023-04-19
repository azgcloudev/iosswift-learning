import UIKit

enum Results {
    case sucess
    case failure
}

var result = Results.sucess
result = Results.failure


// associated values

enum Activity {
    case bored
    case talking(destination: String)
    case singing(volume: Int)
}

var talking = Activity.talking(destination: "Football")
var singing = Activity.singing(volume: 85)
