//
//  ViewController.swift
//  Example
//
//  Created by Mac HD on 9.08.2015.
//
//

import UIKit
import EGFloatingTextField
import PureLayout
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let emailLabel = EGFloatingTextField(frame: CGRectMake(8, 64, CGRectGetWidth(self.view.bounds) - 16, 48))
        emailLabel.floatingLabel = true
        emailLabel.setPlaceHolder("Email")
        emailLabel.validationType = .Email
        emailLabel.keyboardType = .EmailAddress
        self.view.addSubview(emailLabel)
        
        let passwordLabel = EGFloatingTextField(frame: CGRectMake(8, 128, CGRectGetWidth(self.view.bounds) - 16, 48))
        passwordLabel.floatingLabel = true
        passwordLabel.secureTextEntry = true
        passwordLabel.setPlaceHolder("Password")
        self.view.addSubview(passwordLabel)
        
        emailLabel.autoPinEdge(ALEdge.Left, toEdge:ALEdge.Left, ofView:self.view, withOffset:8)
        emailLabel.autoPinEdge(ALEdge.Right, toEdge:ALEdge.Right, ofView:self.view, withOffset:-8)
        emailLabel.autoPinToTopLayoutGuideOfViewController(self, withInset:16)
        emailLabel.autoSetDimension(ALDimension.Height, toSize:44)
        
        passwordLabel.autoPinEdge(ALEdge.Left, toEdge:ALEdge.Left, ofView:self.view, withOffset:8)
        passwordLabel.autoPinEdge(ALEdge.Right, toEdge:ALEdge.Right, ofView:self.view, withOffset:-8)
        passwordLabel.autoPinEdge(ALEdge.Top, toEdge:ALEdge.Bottom, ofView:emailLabel, withOffset:16)
        passwordLabel.autoSetDimension(ALDimension.Height, toSize:44)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

