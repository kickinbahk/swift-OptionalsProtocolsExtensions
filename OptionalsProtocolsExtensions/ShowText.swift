//
//  ViewController.swift
//  OptionalsProtocolsExtensions
//
//  Created by Josiah Mory on 10/26/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import UIKit

class ShowText: UIViewController {

  @IBOutlet weak var showUserTextLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    showUserTextLabel.text = "Tap the Plus button in the Nav to Change the text"
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "AddText" {
      let updateText: UpdateText = segue.destination as! UpdateText
      updateText.delegate = self
    }
  }
  
  // MARK: - Memory Warning
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension ShowText: UpdateTextDelegate {
  func sendText(didFinishUpdating userText: String) {
    showUserTextLabel.text = userText
  }
}
