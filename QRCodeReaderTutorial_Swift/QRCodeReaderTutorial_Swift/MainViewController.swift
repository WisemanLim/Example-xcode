//
//  ViewController.swift
//  QRCodeReaderTutorial_Swift
//
//  Created by Wiseman.Lim on 2024/11/19.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL (string : "https://www.naver.com/")
        let requestObj = URLRequest(url: url!)
        webView.load(requestObj)
    }


}

