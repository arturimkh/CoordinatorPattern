//
//  RegistrationCoordinator.swift
//  CoordinatorTest
//
//  Created by Artur Imanbaev on 19.04.2023.
//

import Foundation
import UIKit
typealias CoordinatorHandler = () -> ()
protocol Coordinator{
    var navigationController: UINavigationController? {get set}
    var flowCompletionHandler: CoordinatorHandler? { get set }
    
    func start()
}


