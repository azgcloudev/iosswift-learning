//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Aldair Zamora on 13/4/23.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors: [UIColor] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()

        // Do any additional setup after loading the view.
    }


    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(createRandomColor())
        }
    }
    
    
    func createRandomColor() -> UIColor {
        
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        
        return randomColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}


// table view
extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell") else {
            return UITableViewCell()
        }
        
        let color = colors[indexPath.row]
        
        tableView.backgroundColor = color
        cell.backgroundColor = color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "toColorsDetailVC", sender: color)
    }
    
}