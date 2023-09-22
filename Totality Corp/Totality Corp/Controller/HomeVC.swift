//
//  ViewController.swift
//  Totality Corp
//
//  Created by Sanjay on 19/09/23.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var homeTableView: UITableView!
    
    var selectedIndexPath: IndexPath?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "home", for: indexPath) as! homeTableViewCell
        cell.nameLbl.isHidden = true
        cell.textLbl.isHidden = true
        cell.readmoreLbl.isHidden = true
        cell.deleteImg.isHidden = true
        cell.stackView.isHidden = true
        cell.downloadBtn.titleLabel?.text = ""
        cell.bgView.applyCornerRadius(15)
        cell.profileView.applyCornerRadius(10)
        cell.downloadBtn.applyCornerRadius(25)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Toggle the selectedIndexPath to expand/collapse the cell
        selectedIndexPath = (selectedIndexPath == indexPath) ? nil : indexPath
        
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let selectedIndexPath = selectedIndexPath, selectedIndexPath == indexPath {
            // Update the color of the view inside the selected cell
            if let cell = tableView.cellForRow(at: indexPath) as? homeTableViewCell {
                cell.nameLbl.isHidden = false
                cell.textLbl.isHidden = false
                cell.readmoreLbl.isHidden = false
                cell.deleteImg.isHidden = false
                cell.stackView.isHidden = false
                cell.downloadBtn.titleLabel?.text = "Download"
                cell.bgView.backgroundColor = UIColor.white // Change to desired color
            }
            return tableView.frame.size.height // Adjust the expanded cell height as needed
        } else {
            // Update the color of the view inside the selected cell
            if let cell = tableView.cellForRow(at: indexPath) as? homeTableViewCell {
                cell.nameLbl.isHidden = true
                cell.textLbl.isHidden = true
                cell.readmoreLbl.isHidden = true
                cell.deleteImg.isHidden = true
                cell.stackView.isHidden = true
                cell.playBtn.isHidden = true
                cell.downloadBtn.titleLabel?.text = ""
                cell.bgView.backgroundColor = UIColor.systemOrange // Change to desired color
            }
            return 456 // Default cell height
        }
    }
    
    @IBAction func playClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "PresentVC")
        
        if let presentationController = viewController.presentationController as? UISheetPresentationController {
            presentationController.detents = [.medium()] /// change to [.medium(), .large()] for a half *and* full screen sheet
        }
        self.present(viewController, animated: true)
    }
    
}
