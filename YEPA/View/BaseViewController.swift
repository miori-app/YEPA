//
//  BaseViewController.swift
//  YEPA
//
//  Created by miori Lee on 2021/07/11.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        // Navigation Bar
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:.default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.navigationBar.layoutIfNeeded()
//        self.navigationController?.navigationBar.tintColor = .black
        
        // Background Color
        self.view.backgroundColor = .white
    }
}
