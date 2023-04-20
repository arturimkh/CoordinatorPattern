//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by Artur Imanbaev on 19.04.2023.
//

import UIKit

class BirthViewController: UIViewController,FlowController {
    var completionHandler: ((String?) -> ())?
    
    let textField: UITextField = {
        $0.frame = CGRect(x: 100, y: 400, width: 100, height: 50)
        $0.placeholder = "Enter birth"
        return $0
    }(UITextField())
    let button: UIButton = {
        $0.frame = CGRect(x: 150, y: 500, width: 50, height: 50)
        $0.setTitle("next", for: .normal)
        $0.setTitleColor(.blue, for: .normal)
        $0.addTarget(self, action: #selector(didPressNextButton), for: .touchUpInside)
        return $0
    }(UIButton())

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUI()
    }
    @objc private func didPressNextButton(){
        completionHandler?(textField.text)
    }
    func setUI(){
        view.addSubview(button)
        view.addSubview(textField)

    }

}

