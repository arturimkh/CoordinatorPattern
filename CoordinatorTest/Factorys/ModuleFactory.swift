//
//  ModuleFactory.swift
//  CoordinatorTest
//
//  Created by Artur Imanbaev on 19.04.2023.
//

import Foundation
class ModuleFactory{
    func createEnterPhoneModule() -> PhoneViewController{
        return PhoneViewController()
    }
    func createEnterPasswordModule() -> PasswordViewController{
        return PasswordViewController()
    }
    func createEnterBirthModule() -> BirthViewController{
        return BirthViewController()
    }
    func createEnterNameModule() -> NameViewController{
        return NameViewController()
    }
}
