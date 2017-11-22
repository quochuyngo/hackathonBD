//
//  StoryboardManager.swift
//  HackathonBD-WeSpeak
//
//  Created by Quoc Huy Ngo on 11/20/17.
//  Copyright © 2017 Huy Ngo. All rights reserved.
//

import UIKit

class StoryboardManager {
    
    static let sharedInstance = StoryboardManager()
    
    func getStoryBoard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    func getTabBarVC() -> UITabBarController {
        let storyboard = getStoryBoard()
        return storyboard.instantiateViewController(withIdentifier: "TabBarController") as! UITabBarController
    }
    
    
}
