//
//  UserModel.swift
//  MessagerTableView
//
//  Created by Nguyễn Văn Hiếu on 6/9/24.
//

import Foundation

struct UserModel {
    let id = UUID()
    var name: String
    var avatar: String
    var status: Bool
    var subTitle: String
    var date: String
}
