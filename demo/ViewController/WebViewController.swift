//
//  WebViewController.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 16.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

   
    
      private (set) lazy var webView: WKWebView = {
            
//            let contentController = WKUserContentController()
//            contentController.add(WebViewScriptMessageHandler.shared, name:Constants.Schemes.appBridgeScheme)
//
            let webViewConfiguration = WKWebViewConfiguration()
//            webViewConfiguration.userContentController = contentController
//
            let webView = WKWebView(frame: self.view.frame, configuration: webViewConfiguration)
            
            webView.autoresizesSubviews = true
            webView.scrollView.bounces = false
            webView.scrollView.showsVerticalScrollIndicator = false
            webView.scrollView.showsHorizontalScrollIndicator = false
            webView.scrollView.decelerationRate = UIScrollViewDecelerationRateNormal
            webView.navigationDelegate = self
//            webView.uiDelegate = self
            webView.translatesAutoresizingMaskIntoConstraints = false
            webView.contentMode = .scaleToFill
            return webView
            
        }()
        
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(closeWebScreen))
        self.title = "WebView"
        
        super.viewDidLoad()
        
        self.webView.frame = self.view.frame
        self.view.addSubview(self.webView)
        
        self.setUpWebView()
        
        // Do any additional setup after loading the view.
    }
    
    @objc func closeWebScreen(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    private func setUpWebView() {
        
        let urlString = "https://www.google.de"
        
        guard let url = URL(string: urlString) else {
            return
        }
       
        let request = URLRequest(url: url)
        self.webView.load(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}

extension WebViewController: WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        decisionHandler(.allow)
    }
    
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        
        print("\(#function) \(error.localizedDescription)")
        
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        
        print("\(#function) \(error.localizedDescription)")
    }
}
