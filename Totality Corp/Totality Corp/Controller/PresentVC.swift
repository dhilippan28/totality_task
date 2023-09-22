//
//  PresentVC.swift
//  Totality Corp
//
//  Created by Sanjay on 20/09/23.
//

import UIKit

class PresentVC: UIViewController {

    @IBOutlet var nextBtn: UIButton!
    @IBOutlet var topView: UIView!
    @IBOutlet var bottomView: UIView!
    @IBOutlet var circleView1: UIView!
    @IBOutlet var circleView2: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextBtn.applyCornerRadius(25)
        topView.applyCornerRadius(8)
        circleView1.setRounded()
        circleView2.setRounded()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        slideView()
    }
    
    func slideView() {
        UIView.animate(withDuration: 0.5, animations: {
            // Set the new x-coordinate to slide the view
            self.topView.frame.origin.x -= 100
            self.bottomView.frame.origin.x -= 100
        }) { (finished) in
            // Animation completion code
        }
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "NextPresentVC")
        
        if let presentationController = viewController.presentationController as? UISheetPresentationController {
            presentationController.detents = [.medium()] /// change to [.medium(), .large()] for a half *and* full screen sheet
        }
        self.present(viewController, animated: true)
    }
    
}
