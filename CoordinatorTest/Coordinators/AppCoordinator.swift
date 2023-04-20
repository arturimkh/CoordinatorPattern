//
//  AppCoordinator.swift
//  CoordinatorTest
//
//  Created by Artur Imanbaev on 19.04.2023.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator{
    var flowCompletionHandler: CoordinatorHandler?
    var navigationController: UINavigationController?
    var childCoordinators: [Coordinator] = []
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    var isAuth = false
    func start() {
        if isAuth{
            
        } else{
            showRegistrationCoordinator()
        }
    }
    private func showRegistrationCoordinator(){
        let registrationCoordinator = CoordinatorFactory().createRegistrationCoordinator(navigationController: navigationController!)
        childCoordinators.append(registrationCoordinator)
        registrationCoordinator.start()
        registrationCoordinator.flowCompletionHandler = {
            self.showMainCoordinator()
        }
    }
    private func showMainCoordinator()
    {
        
    }
}
