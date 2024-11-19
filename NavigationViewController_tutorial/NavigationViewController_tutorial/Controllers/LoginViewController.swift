//
//  ViewController.swift
//  NavigationViewController_tutorial
//
//  Created by SY2024081308 on 11/18/24.
//

import UIKit

class LoginViewController: UIViewController {

    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 상단 네비게이션 바 부분을 숨김처리한다.
        self.navigationController?.isNavigationBarHidden = true
    }


}

