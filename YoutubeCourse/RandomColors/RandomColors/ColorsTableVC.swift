//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Aldair Zamora on 27/5/23.
//

import UIKit

class ColorsTableVC: UIViewController {

    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
        
    }
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addRandomColors()
    }

    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(UIColor.random())
        }
    }
    
    
    // function is use to send the color to another VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }

}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {

    // how many rows to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    // what to show in the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}
