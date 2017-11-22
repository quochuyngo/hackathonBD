//
//  ProfileViewController.swift
//  HackathonBD-WeSpeak
//
//  Created by Quoc Huy Ngo on 11/21/17.
//  Copyright © 2017 Huy Ngo. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initCells()
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
        tableView.reloadData()
    }
    
    func initCells() {
        tableView.register(UINib(nibName: String(describing: ProfileCell.self), bundle: nil) , forCellReuseIdentifier: "ProfileCell")
    }
}

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell") as! ProfileCell
        //cell.user = currentUser
        return cell
    }
}
