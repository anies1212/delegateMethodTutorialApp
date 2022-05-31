//
//  FruitsViewController.swift
//  delegateMethodTutorialApp
//
//  Created by anies1212 on 2022/05/10.
//

import UIKit

class FruitsViewController: UIViewController {
    
    @IBOutlet var fruitsLabel: UILabel!
    var receiveFruitsString = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        fruitsLabel.text = receiveFruitsString
    }
    


}
