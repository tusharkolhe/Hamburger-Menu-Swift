//
//  ViewController.swift
//  HamburgerMenu1
//
//  Created by Tushar Kolhe on 02/07/18.
//  Copyright © 2018 Tushar Kolhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var leadingC: NSLayoutConstraint!
    @IBOutlet var trailingC: NSLayoutConstraint!
    
    @IBOutlet var ubeView: UIView!
    
    var hamburgerMenuIsVisible = false
    
    @IBAction func hamburgerBtnTapped(_ sender: Any) {
        //if the hamburger menu is NOT visible, then move the ubeView back to where it used to be
        if !hamburgerMenuIsVisible {
            leadingC.constant = 300
            //this constant is NEGATIVE because we are moving it 150 points OUTWARD and that means -150
            trailingC.constant = -150
            
            //1
            hamburgerMenuIsVisible = true
        } else {
            //if the hamburger menu IS visible, then move the ubeView back to its original position
            leadingC.constant = 0
            trailingC.constant = 0
            
            //2
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

