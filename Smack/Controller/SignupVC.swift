//
//  SignupVC.swift
//  Smack
//
//  Created by Valentinas Stripeika on 4/29/18.
//  Copyright © 2018 Valentinas Stripeika. All rights reserved.
//

import UIKit

class SignupVC: UIViewController {

    //MARK: - Events
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //MARK: - Actions
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
