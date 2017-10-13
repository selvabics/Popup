//
//  PopupViewController.swift
//  Popup
//
//  Created by jayaraj on 29/09/17.
//  Copyright © 2017 sample. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    var delegate: ViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBlackAction(_ sender: UIButton) {
        delegate?.view.backgroundColor = UIColor.black
    }
    @IBAction func btnWhiteAction(_ sender: UIButton) {
        delegate?.view.backgroundColor = UIColor.white
    }
    @IBAction func btnOrangeAction(_ sender: UIButton) {
        delegate?.view.backgroundColor = UIColor.orange
    }
    @IBAction func btnBlueAction(_ sender: UIButton) {
        delegate?.view.backgroundColor = UIColor.blue
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
