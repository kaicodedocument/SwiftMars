//
//  BasicViewController.swift
//  SwiftMars
//
//  Created by chenkai on 2017/1/10.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import UIKit
import SnapKit
import Foundation

class BaiscViewController:UIViewController,UIWebViewDelegate{
    var instagramBut:UIButton?
    var oauthWebView:UIWebView?
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        self.initElementAndLayout()
    }
    
    func initElementAndLayout() {
        self.instagramBut = UIButton()
        self.instagramBut?.setTitle("Login in Instagram", for: UIControlState.normal)
        self.instagramBut?.setTitleColor(UIColor.gray, for: UIControlState.normal)
        self.instagramBut?.addTarget(self, action: #selector(self.instagramLogin(_:)), for: .touchUpInside)
        self.view.addSubview(self.instagramBut!)
        
        let superView:UIView = self.view
        self.instagramBut?.snp.makeConstraints({ (make) in
            make.centerX.equalTo(superView.snp.centerX)
            make.centerY.equalTo(superView.snp.centerY)
        })
        
        self.oauthWebView = UIWebView()
        self.oauthWebView?.isHidden = true
        self.view.addSubview(self.oauthWebView!)
        self.oauthWebView?.snp.makeConstraints({ (make) in
            make.leading.equalTo(superView.snp.leading)
            make.top.equalTo(superView.snp.top)
            make.trailing.equalTo(superView.snp.trailing)
            make.bottom.equalTo(superView.snp.bottom)
        })
    }
    
    func instagramLogin(_ sender: UIButton) {
        self.instagramBut?.isHidden = true
        self.oauthWebView?.isHidden = false
        let oauthUrl: String! = "https://api.instagram.com/oauth/authorize/?client_id=\(INSTAGRAM_CLIENT_ID)&redirect_uri=\(INSTAGRAM_REDIRECT_URL)&response_type=code"
        let url = NSURL(string: oauthUrl)
        let urlRequest:NSURLRequest! = NSURLRequest(url: url as! URL)
        self.oauthWebView?.loadRequest(urlRequest as URLRequest)
        
    }
    


}
