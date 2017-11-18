//
//  Text FieldsViewController.swift
//  UIElements
//
//  Created by Efrain Ayllon on 11/17/17.
//  Copyright © 2017 Efrain Ayllon. All rights reserved.
//

import UIKit

class Text_FieldsViewController: UIViewController {

    @IBOutlet weak var underlinedTextField :UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        underlinedTextField.useUnderline()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



extension UITextField {
    
    func useUnderline() {
        
        let border = CALayer()
        let borderWidth = CGFloat(1.0)
        border.borderColor = UIColor.blue.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
