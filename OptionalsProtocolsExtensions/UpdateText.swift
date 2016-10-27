//
//  UpdateText.swift
//  OptionalsProtocolsExtensions
//
//  Created by Josiah Mory on 10/27/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import Foundation
import UIKit

protocol UpdateTextDelegate {
  func sendText(didFinishUpdating userText: String)
}

class UpdateText: UIViewController {

  @IBOutlet weak var userAddTextField: UITextField!
  @IBOutlet weak var updateButton: UIButton!
  
  var delegate: UpdateTextDelegate?
  
  override func viewWillAppear(_ animated: Bool) {
    userAddTextField.becomeFirstResponder()
  }
  
  
  @IBAction func cancel() {
    dismiss(animated: true, completion: nil)
  }
  
  @IBAction func update() {
    if delegate != nil {
      if userAddTextField.text != nil {
        let userText = userAddTextField.text
        delegate?.sendText(didFinishUpdating: userText!)
        dismiss(animated: true, completion: nil)
      }
    }
  }

  
}

extension UpdateText: UITextFieldDelegate {
  
}

