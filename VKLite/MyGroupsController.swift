//
//  GroupsController.swift
//  VKLite
//
//  Created by HappyRoman on 05/04/2023.
//

import UIKit

class MyGroupsController: UIViewController {
    
    let groups = [
        Friends(name: "axe", avatar: UIImage(named: "axe")),
        Friends(name: "bat", avatar: UIImage.init(named: "bat")),
        Friends(name: "eye", avatar: UIImage.init(named: "eye")),
        Friends(name: "grave", avatar: UIImage.init(named: "grave")),
        Friends(name: "gun", avatar: UIImage.init(named: "gun")),
        Friends(name: "jason", avatar: UIImage.init(named: "jason")),
        Friends(name: "skull", avatar: UIImage.init(named: "skull")),
        Friends(name: "voodoo", avatar: UIImage.init(named: "voodoo"))
    
    ]

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "FriendGroupXibCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
}

extension MyGroupsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? FriendGroupXibCell else {preconditionFailure("Error")}
        cell.nameLabel.text = groups[indexPath.row].name
        cell.avatarImage.image = groups[indexPath.row].avatar
        return cell
    }
    
    
}
