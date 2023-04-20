//
//  UserData.swift
//  CoordinatorTest
//
//  Created by Artur Imanbaev on 19.04.2023.
//

import Foundation
class UserData{
    var name: String?
    var birth: String?
    var phone: String?
    var password: String?
    init(name: String? = nil, birth: String? = nil, phone: String? = nil, password: String? = nil) {
        self.name = name
        self.birth = birth
        self.phone = phone
        self.password = password
    }
}
