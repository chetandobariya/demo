//
//  Notification+Custom.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 09.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import Foundation
import UIKit

extension Notification.Name {
    
    static let RebuildWebView = Notification.Name("RebuildWebView")
    static let UpdateBadgeValue = Notification.Name("UpdateBadgeValue")
    static let NavigateToEndpoint = Notification.Name("NavigateToEndpoint")
    static let UpdateCart = Notification.Name("UpdateCart")
    static let SetCartQuantity = Notification.Name("SetCartQuantity")

    static let ShowInAppPushMessage = Notification.Name("ShowInAppPushMessage")
  
    static let ShareApp = Notification.Name("ShareApp")
    static let Login = Notification.Name("Login")

}

extension Notification {
    
    struct UpdateBadgeValue {
        
        static let valueKey = "value"
    }
    struct productImage {
        
        static let productImagesKey = "productImages"
        static let indexKey = "index"
    }
    
    struct NavigateToEndpoint {
        
        static let endpointKey = "endpoint"
    }

}

//usage of notification

//let userInfo = [Notification.ShowFullscreenImage.indexKey: productImageData.index, Notification.ShowFullscreenImage.productImagesKey: productImageData.images] as [String : Any]
//NotificationCenter.default.post(name: .ShowFullscreenImage, object: self, userInfo: userInfo)
//NotificationCenter.default.addObserver(self, selector: #selector(self.handleShowProductImageOverlayNotification(_:)), name: .ShowFullscreenImage, object: nil)
//    @objc private func handleShowProductImageOverlayNotification(_ notification: Notification) { }

