//
//  TableViewCell.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 10.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import UIKit
import Cosmos
import Alamofire
import AlamofireImage


class RepositoryCell: UITableViewCell {

    @IBOutlet weak var userProfile: UIImageView!
    @IBOutlet weak var ratingView: CosmosView!
    @IBOutlet weak var username: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let separatorPadding = CGFloat(15.0)
        self.separatorInset = UIEdgeInsets(top: 0.0, left: separatorPadding, bottom: 0.0, right: separatorPadding)
        
        self.selectionStyle = .none
        self.ratingView.settings.updateOnTouch = false
        self.ratingView.settings.fillMode = .precise
        
    }
    
    func setup(with repositoryItems: Repositories) {
        
            self.username.text = repositoryItems.name
            self.username.font = UIFont.futuraMediumOf(size: 18.0)
            self.ratingView.rating = 4.5
       
            self.loadImage(imageURL:repositoryItems.owner?.avatarUrl)
    }

    private func loadImage(imageURL:URL?){
        
        guard  let requestURL = imageURL else {
            return
        }
        
        self.userProfile.af_setImage(withURL: requestURL)

        
//        if let url = imageURL?.absoluteString {
//
//
//
//
//
//            //   DataUpdateHelper.shared.fetchImage(for: (repositoryItems.owner?.avatarUrl)!, completion: { (result) in
//            //
//            //                    switch result {
//            //
//            //                        case .failure (let error):
//            //                            print("\(#function) \(error.localizedDescription)")
//            //
//            //                        case .success (let image):
//            //
//            //                            DispatchQueue.main.async {
//            //                                self.userProfile.image = image
//            //                            }
//            //                    }
//            //   })
//
//
//
//
//            Alamofire.request(url).responseImage { (response) in
//
//                if let image = response.result.value {
//
//                    DispatchQueue.main.async {
//
//                        self.userProfile.image = image
//                        //self.userProfile.af_setImage(withURL: imageURL!)
//                    }
//
//                }
//            }
//
//        }
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
