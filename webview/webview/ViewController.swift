//
//  ViewController.swift
//  webview
//
//  Created by Fumitaka KIMIZUKA on 2019/01/13.
//  Copyright © 2019 Fumitaka KIMIZUKA. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
//        self.setNeedsStatusBarAppearanceUpdate()
        self.view.addSubview(webView)
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.scrollView.bounces = false
        
        if let htmlData = Bundle.main.path(forResource: "public/index", ofType: "html") {
            webView.load(URLRequest(url: URL(fileURLWithPath: htmlData)))
        }
    }

//    override var prefersStatusBarHidden: Bool {
//        return true
//    }
    
}

