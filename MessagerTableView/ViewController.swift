//
//  ViewController.swift
//  MessagerTableView
//
//  Created by Nguyễn Văn Hiếu on 6/9/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let users: [UserModel] = [
        UserModel(name: "Nguyen Anh Tu", avatar: "user", status: true, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Le Hoang Nam", avatar: "cat", status: false, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Nguyen Anh", avatar: "cat", status: true, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Tran Quan", avatar: "cat", status: true, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Phuong Thuy", avatar: "cat", status: false, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Phuong Thao", avatar: "", status: false, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Linh Linh", avatar: "", status: false, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Hieu", avatar: "cat", status: true, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Nguyễn Văn Hiếu", avatar: "cat", status: false, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Nguyen Le Hiếu", avatar: "", status: false, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
        UserModel(name: "Nguyễn Trung Hiếu", avatar: "", status: false, subTitle: "Hi, I'm Nguyễn Văn Hiếu", date: "10:00"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CustomChatTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomChatTableViewCell")
        tableView.showsVerticalScrollIndicator = false
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomChatTableViewCell", for: indexPath) as! CustomChatTableViewCell
        cell.avatarImage.image = users[indexPath.row].avatar.isEmpty ? UIImage(named: "userdefault") : UIImage(named: users[indexPath.row] .avatar)
        cell.userNameLabel.text = users[indexPath.row].name
        cell.chatLabel.text = users[indexPath.row].subTitle
        cell.statusImage.image = users[indexPath.row].status ? UIImage(named: "online") : UIImage(systemName: "circle")
        cell.dateLable.text = users[indexPath.row].date
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
}
