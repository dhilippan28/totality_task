//
//  ConfirmVC.swift
//  Totality Corp
//
//  Created by Sanjay on 21/09/23.
//

import UIKit

class ConfirmVC: UIViewController {

    @IBOutlet var readyLbl: UILabel!
    @IBOutlet var oswaldLbl: UILabel!
    @IBOutlet var circleStackView: UIStackView!
    @IBOutlet var circleView1: UIView!
    @IBOutlet var circleView2: UIView!
    @IBOutlet var circleView3: UIView!
    @IBOutlet var confirmBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        confirmBtn.applyCornerRadius(25)
        circleView1.setRounded()
        circleView2.setRounded()
        circleView3.setRounded()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        slideView()
    }
    
    func slideView() {
        UIView.animate(withDuration: 0.5, animations: {
            // Set the new x-coordinate to slide the view
            self.readyLbl.frame.origin.x -= 100
            self.oswaldLbl.frame.origin.x -= 100
            self.circleStackView.frame.origin.x -= 100
        }) { (finished) in
            // Animation completion code
        }
    }
    
}
