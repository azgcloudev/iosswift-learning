//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Aldair Zamora on 13/4/23.
//

import UIKit

class ColorsTableVC: UIViewController {

    @IBAction func temoButtonSegue(_ sender: Any) {
        
        performSegue(withIdentifier: "toColorsDetailVC", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
