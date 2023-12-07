//
//  ViewController.swift
//  ProtocolsExample
//
//  Created by matias on 06/12/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stringSelectedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        stringSelectedLabel.isHidden = true
    }
    
    @IBAction func open2ndScreenPressed(_ sender: Any){
        // Crea una instancia del SecondVC
            let vc = SecondVC()
            // Establecerse como delegado para recibir actualizaciones
            vc.delegate = self
            // Presenta el SecondVC utilizando el controlador de navegación
            navigationController?.present(vc, animated: true)
        }
    }

extension ViewController: StringProtocol{
    func stringLenght(_ count: Int) {
       print("count: ", count)
    }
    
    func didSelectedString(_ string: String) {
        // Actualiza la etiqueta con el texto seleccionado y la muestra
        stringSelectedLabel.text = string
        stringSelectedLabel.isHidden = false
    }
}
