//
//  ViewController.swift
//  NiceApp
//
//  Created by Wiseman.Lim on 2024/11/14.
//

import UIKit
import Lottie

class MainViewController: UIViewController {

    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "메인화면"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .black
        
        return label
    }()
    
   
    let animationView: LottieAnimationView = {
        let animView = LottieAnimationView(name: "LottieLego")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        
        animView.contentMode = .scaleAspectFill
        
        return animView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center

        // 애니메이션 실행
        animationView.play{ (finish) in
            print("애니메이션이 끝났습니다.")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}

