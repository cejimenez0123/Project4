//
//  ViewController.swift
//  Project4
//
//  Created by /fam on 3/22/21.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKNavigationDelegate {
    var webView:WKWebView!
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://www.hackingwithswift.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

