//
//  NextPresentVC.swift
//  Totality Corp
//
//  Created by Sanjay on 21/09/23.
//

import UIKit

class NextPresentVC: UIViewController {

    @IBOutlet var topView: UIView!
    @IBOutlet var circleStackView: UIStackView!
    @IBOutlet var circleView1: UIView!
    @IBOutlet var circleView2: UIView!
    @IBOutlet var circleView3: UIView!
    @IBOutlet var walletbalView1: UIView!
    @IBOutlet var walletbalView2: UIView!
    @IBOutlet var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextBtn.applyCornerRadius(25)
        topView.applyCornerRadius(8)
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
            self.topView.frame.origin.x -= 100
            self.circleStackView.frame.origin.x -= 100
            self.walletbalView1.frame.origin.x -= 100
            self.walletbalView2.frame.origin.x -= 100
        }) { (finished) in
            // Animation completion code
        }
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ConfirmVC")
        
        if let presentationController = viewController.presentationController as? UISheetPresentationController {
            presentationController.detents = [.medium()] /// change to [.medium(), .large()] for a half *and* full screen sheet
        }
        self.present(viewController, animated: true)
    }
    
}
