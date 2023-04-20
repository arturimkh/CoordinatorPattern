//
//  FlowController.swift
//  CoordinatorTest
//
//  Created by Artur Imanbaev on 19.04.2023.
//

import Foundation

protocol FlowController{
    associatedtype T
    var completionHandler: ((T) -> ())? { get set }
}
