//
//  ViewController.swift
//  Popup
//
//  Created by jayaraj on 29/09/17.
//  Copyright © 2017 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func colorPickerButton(_ sender: UIButton) {
        
        let popoverVC = storyboard?.instantiateViewController(withIdentifier: "PopupViewController") as! PopupViewController
     
            popoverVC.modalPresentationStyle = .popover
            popoverVC.preferredContentSize = CGSize.init(width: 208, height: 228)
            if let popoverController = popoverVC.popoverPresentationController {
                popoverController.sourceView = sender
                popoverController.sourceRect = sender.bounds
                popoverController.permittedArrowDirections = .any
                popoverController.delegate = self
                
                popoverVC.delegate = self
            }
            present(popoverVC, animated: true, completion: nil)
        
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

}

