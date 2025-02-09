//
//  ChatTableViewManager.swift
//  Message App
//
//  Created by Christopher on 11/11/23.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activeChats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Configs.tableViewChatsID, for: indexPath) as! ChatsTableViewCell
        cell.labelFriend.text = activeChats[indexPath.row].userChatting.name
        //MARK: need to determine if last or first message is the most recent->
        cell.labelMessage.text = activeChats[indexPath.row].messages.first?.text
        cell.labelDateTime.text = activeChats[indexPath.row].messages.last?.text
        return cell
    }
}
