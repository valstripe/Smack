//
//  ChatVC.swift
//  Smack
//
//  Created by Valentinas Stripeika on 4/28/18.
//  Copyright © 2018 Valentinas Stripeika. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    //MARK: - Events
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }
    
}
