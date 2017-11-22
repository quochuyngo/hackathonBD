//
//  FindViewController.swift
//  HackathonBD-WeSpeak
//
//  Created by Quoc Huy Ngo on 11/20/17.
//  Copyright © 2017 Huy Ngo. All rights reserved.
//

import UIKit
import RPCircularProgress

class FindViewController: UIViewController {

    @IBOutlet weak var heightFindButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var blurView: UIView!
    @IBOutlet weak var findPartnerButton: UIButton!
    
    let titleFind = "Let find an English native speaker!"
    let titleFinding = "We are connecting you with a native!"
    
    lazy fileprivate var thinIndeterminate: RPCircularProgress = {
        let progress = RPCircularProgress()
        progress.thicknessRatio = 0.1
        progress.indeterminateDuration = 0.5
        progress.trackTintColor = UIColor.gray
        progress.progressTintColor = UIColor.red
        progress.clockwiseProgress = true
        return progress
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        heightFindButtonConstraint.constant *= Screen.ratio
        findPartnerButton.layoutIfNeeded()
        let radius = findPartnerButton.frame.height/2
        findPartnerButton.make(cornerRadius: radius, boderWidth: 2.0, boderColor: UIColor.mainColor())
        blurView.addSubview(thinIndeterminate)
        thinIndeterminate.frame = CGRect(x: 100, y: 0, width: 100, height: 100)
        //addCircle()
    }
    
    @IBAction func stopFindAction(_ sender: UIButton) {
        stopFinding()
    }
    
    @IBAction func findAction(_ sender: UIButton) {
        
        findPartner()
        
    }
    
    func findPartner() {
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: {
            self.blurView.alpha = 1
            self.findPartnerButton.isEnabled = false
            self.findPartnerButton.backgroundColor = UIColor.clear
            self.findPartnerButton.setTitle("Searching", for: .normal)
            self.titleLabel.text = self.titleFinding
            guard let tabbar = self.tabBarController?.tabBar else { return }
            tabbar.transform = CGAffineTransform(translationX: tabbar.frame.origin.x, y: tabbar.frame.height)
        }, completion: nil)
    }
    
    func stopFinding() {
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: {
            self.blurView.alpha = 0
            self.findPartnerButton.isEnabled = true
            self.findPartnerButton.setTitle("Search", for: .normal)
            self.findPartnerButton.backgroundColor = UIColor.mainColor()
            self.titleLabel.text = self.titleFind
            guard let tabbar = self.tabBarController?.tabBar else { return }
            tabbar.transform = CGAffineTransform(translationX: tabbar.frame.origin.x, y: 0)
        }, completion: {
            completed in
            
        })
    }
}
