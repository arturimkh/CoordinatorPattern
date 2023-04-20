//
//  CoordinatorFactory.swift
//  CoordinatorTest
//
//  Created by Artur Imanbaev on 19.04.2023.
//

import Foundation
import UIKit

class CoordinatorFactory{
    func createRegistrationCoordinator(navigationController: UINavigationController) -> RegistrationCoordinator{ return RegistrationCoordinator(navigationController: navigationController)
    }
    func createAppCoordinator(navigationController: UINavigationController) -> AppCoordinator{
        return AppCoordinator(navigationController: navigationController)
    }
}
