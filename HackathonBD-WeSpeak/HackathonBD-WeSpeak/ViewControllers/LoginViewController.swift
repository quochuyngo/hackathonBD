//
//  LoginViewController.swift
//  HackathonBD-WeSpeak
//
//  Created by Quoc Huy Ngo on 11/20/17.
//  Copyright © 2017 Huy Ngo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nativeSpeakerButton: UIButton!
    @IBOutlet weak var learnerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        let radius = learnerButton.frame.height/2
        learnerButton.layer.cornerRadius = radius
        nativeSpeakerButton.layer.cornerRadius = radius
        nativeSpeakerButton.layer.borderWidth = 2
        nativeSpeakerButton.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func onNativeSpeakerTap(_ sender: UIButton) {
        
    }
    
    @IBAction func onLearnerTap(_ sender: UIButton) {
        let rootVC = StoryboardManager.sharedInstance.getTabBarVC()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = rootVC
    }
    
}
