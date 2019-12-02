//
//  ViewController.swift
//  SlideMenuSample
//
//  Created by sensei on 2019/12/02.
//  Copyright © 2019 senseiphoneX. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class SlideViewController: SlideMenuController {
    
    override func awakeFromNib() {
        let mainVC = storyboard?.instantiateViewController(withIdentifier: "Main")
        let leftVC = storyboard?.instantiateViewController(withIdentifier: "Left")
        
        //NavigationBarを生成
        let navigationController = UINavigationController(rootViewController: mainVC!)
        navigationController.navigationBar.barTintColor = .red
        navigationController.navigationBar.tintColor = UIColor.white
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
        //ライブラリ特有のプロパティにセット
        mainViewController = navigationController
        leftViewController = leftVC
        SlideMenuOptions.leftViewWidth = 200
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
