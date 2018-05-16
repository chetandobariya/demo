//
//  UICollectionView+Custom.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 09.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import UIKit

extension UICollectionView
{
    open func registerNib<T: UICollectionViewCell>(cellType: T.Type) {
        let cellClassName = String(describing: cellType)
        let cellNib = UINib(nibName: cellClassName, bundle: nil)
        self.register(cellNib, forCellWithReuseIdentifier: cellClassName)
    }
    
    open func dequeueReusableCell<T: UICollectionViewCell>(cellType: T.Type, for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: String(describing: cellType), for: indexPath) as! T
    }
}
