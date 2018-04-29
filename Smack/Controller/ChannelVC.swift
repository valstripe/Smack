//
//  ChannelVC.swift
//  Smack
//
//  Created by Valentinas Stripeika on 4/28/18.
//  Copyright © 2018 Valentinas Stripeika. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var logInBtn: UIButton!
    
    //MARK: - Events
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    //MARK: - Actions
    @IBAction func logInBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    
    //MARK: - Functions
    
}
