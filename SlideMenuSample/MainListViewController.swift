//
//  MainListViewController.swift
//  SlideMenuSample
//
//  Created by sensei on 2019/12/02.
//  Copyright © 2019 senseiphoneX. All rights reserved.
//

import Foundation
import SlideMenuControllerSwift


class MainListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addLeftBarButtonWithImage(UIImage(named: "menu")!)
    }
    
    @objc private func didTapMenuIcon() {
        self.slideMenuController()?.openLeft()
    }
    
    
}
