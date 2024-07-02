//
//  ViewController.swift
//  TableViewConstraint
//
//  Created by Omid Heydarzadeh on 7/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var changeToYellowView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeToYellowView(changeToYellowView)
        
    }

    @IBAction func changeToYellowView(_ sender: Any) {
        redView.backgroundColor = .yellow
    }
    
}

