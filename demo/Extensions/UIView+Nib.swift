//
//  UIView+Nib.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 09.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import UIKit

extension UIView
{
    /// Load view from nib
    class func loadFromNib<T: UIView>() -> T
    {
        let nibName: String = String(describing: T.self)
        print(nibName.components(separatedBy: ".").first!)
        
        return Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?.first as! T
    }
    
    func snapshotImage() -> UIImage? {
        
        let opaque = (self.isOpaque && self.alpha == 1.0)
        var snapshot: UIImage? = nil
        
        autoreleasepool {
            UIGraphicsBeginImageContextWithOptions(self.bounds.size, opaque, 0.0)
            
            self.drawHierarchy(in: self.bounds, afterScreenUpdates: true)
            snapshot = UIGraphicsGetImageFromCurrentImageContext()
            
            UIGraphicsEndImageContext()
        }
        
        return snapshot
    }
}
