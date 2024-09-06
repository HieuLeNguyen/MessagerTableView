//
//  GearViewController.swift
//  MessagerTableView
//
//  Created by Nguyễn Văn Hiếu on 6/9/24.
//

import UIKit

class GearViewController: UIViewController {
    @IBOutlet weak var gearTableView: UITableView!
    
    
    var data = [
        ["Bảo mật tài khoản"],
        ["Chế độ người giám hộ", "Chế độ Đơn giản"],
        ["Thông báo tin nhắn", "Trò chuyện", "Chung"],
        ["Quyền của bạn bè", "Thông tin & uỷ quyền của tôi"],
        ["Về", "Trợ giúp & Phản hổi"],
        ["Chuyền đổi tài khoản"],
        ["Đăng xuất"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gearTableView.showsVerticalScrollIndicator = false
        gearTableView.register(UINib(nibName: "GearTableViewCell", bundle: nil), forCellReuseIdentifier: "GearTableViewCell")
    }

}

extension GearViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 3:
            return "Bảo mật"
        default:
            return nil
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section >= 5 {
            let centerCell = tableView.dequeueReusableCell(withIdentifier: "GearTableViewCell", for: indexPath) as! GearTableViewCell
            centerCell.centerLable.text = data[indexPath.section][indexPath.row]
            return centerCell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GearCell", for: indexPath)
            cell.textLabel?.text = data[indexPath.section][indexPath.row]
            return cell
        }
    }
    
}

extension GearViewController: UITableViewDelegate {
    
}
