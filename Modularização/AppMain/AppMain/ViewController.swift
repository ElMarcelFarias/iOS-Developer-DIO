//
//  ViewController.swift
//  AppMain
//
//  Created by Marcel Leite de Farias on 03/04/23.
//

import UIKit
import ChartFeature

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showGrafico(_ sender: Any) {
        navigationController?.pushViewController(ChartFeatureViewController(), animated: true)
    }
    
}

