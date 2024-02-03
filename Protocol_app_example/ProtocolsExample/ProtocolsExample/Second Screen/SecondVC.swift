//
//  SecondVC.swift
//  ProtocolsExample
//
//  Created by matias on 06/12/2023.
//

import UIKit

protocol StringProtocol {
    func didSelectedString(_ string: String)
    func stringLenght(_ count: Int)
}

class SecondVC: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var delegate: StringProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }


    @IBAction func dismissButtonPressed(_ sender: Any) {
           if let selectedString = textField.text {
               delegate?.stringLenght(selectedString.count)
               delegate?.didSelectedString(selectedString)
           }
           dismiss(animated: true)
       }
   }
