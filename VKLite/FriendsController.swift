//
//  FriendsController.swift
//  VKLite
//
//  Created by HappyRoman on 04/04/2023.
//

import UIKit

class FriendsController: UITableViewController {
    
    let friends = [
        Friends(name: "axe", avatar: UIImage(named: "axe")),
        Friends(name: "bat", avatar: UIImage.init(named: "bat")),
        Friends(name: "eye", avatar: UIImage.init(named: "eye")),
        Friends(name: "grave", avatar: UIImage.init(named: "grave")),
        Friends(name: "gun", avatar: UIImage.init(named: "gun")),
        Friends(name: "jason", avatar: UIImage.init(named: "jason")),
        Friends(name: "skull", avatar: UIImage.init(named: "skull")),
        Friends(name: "voodoo", avatar: UIImage.init(named: "voodoo"))
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

  

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendsCell else {preconditionFailure("Error")}

        cell.avatarFriendsImage.image = friends[indexPath.row].avatar
        cell.nameFriendsLabel.text = friends[indexPath.row].name

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PhotoController",
           let destinationVC = segue.destination as? PhotoController,
           let indexPath = tableView.indexPathForSelectedRow
        {
            let avatar = friends[indexPath.row].avatar
            destinationVC.photoFriend = avatar
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
