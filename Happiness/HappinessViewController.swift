//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Michael Tran on 1/07/2015.
//  Copyright (c) 2015 Michael Tran. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController {
    
    var happiness: Int = 50 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            println("happiness = \(happiness)")
            updateUI()
        }
    }
    
    func updateUI() {
        
    }

}
