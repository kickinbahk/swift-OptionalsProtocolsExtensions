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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    userAddTextField.delegate = self
    updateButton.adjustsImageWhenDisabled = true
    updateButton.isEnabled = false
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

  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
                 replacementString string: String) -> Bool {
    let oldText = textField.text! as NSString
    let newText = oldText.replacingCharacters(in: range, with: string) as NSString
    updateButton.isEnabled = ((newText.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines) as NSString).length > 0)
    
    if updateButton.isEnabled {
      updateButton.alpha = 1.0
    }
    
    return true
  }

  func textFieldShouldClear(_ textField: UITextField) -> Bool {
    updateButton.isEnabled = false
    updateButton.alpha = 0.5
    return true
  }
}

