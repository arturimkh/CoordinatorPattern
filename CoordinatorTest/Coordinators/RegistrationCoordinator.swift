//
//  RegistrationCoordinator.swift
//  CoordinatorTest
//
//  Created by Artur Imanbaev on 19.04.2023.
//

import Foundation
import UIKit

class RegistrationCoordinator: Coordinator{
    var navigationController: UINavigationController?
    var flowCompletionHandler: CoordinatorHandler?
    
    let moduleFactory = ModuleFactory()
    var userData = UserData()
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        showEnterPhoneModule()
    }
    private func showEnterPhoneModule(){
        let controller = moduleFactory.createEnterPhoneModule()
        controller.completionHandler = { value in
            self.userData.phone = value
            self.showEnterNameModule()
        }
        navigationController?.pushViewController(controller, animated: true)
    }
    private func showEnterPasswordModule(){
        let controller = moduleFactory.createEnterPasswordModule()
        controller.completionHandler = { value in
            self.userData.password = value
            self.showEnterBirthModule()
        }
        navigationController?.pushViewController(controller, animated: true)
    }
    private func showEnterBirthModule(){
        let controller = moduleFactory.createEnterBirthModule()
        controller.completionHandler = { value in
            self.userData.birth = value
            self.flowCompletionHandler!() //после birth кидаемся в некст флоу
        }
        navigationController?.pushViewController(controller, animated: true)
    }
    private func showEnterNameModule(){
        let controller = moduleFactory.createEnterNameModule()
        controller.completionHandler = { value in
            self.userData.name = value
            self.showEnterPasswordModule()
        }
        navigationController?.pushViewController(controller, animated: true)
    }
}
