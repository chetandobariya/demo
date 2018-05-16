//
//  ProductDetailViewController.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 15.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    @IBOutlet weak private var firstname: UILabel!
    @IBOutlet weak var userProfileImage: UIImageView!
    
    @IBOutlet weak private var favoriteButton: UIButton!
    private var isFavourite = false
    var repositoryItems: Repositories?
    var profileImage:UIImage?
    
    
    override func viewDidLoad() {
        
        self.title = "Detail Page"
        super.viewDidLoad()
        self.setUpUserData()
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
//        if isFavourite {
//            UserDefaultsHelper.isFavourite = true
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func setUpUserData() {
        
        self.firstname.text = self.repositoryItems?.name
        self.userProfileImage.image = self.profileImage
    }

    @IBAction func makeFavourite(_ sender: Any) {
        
        
        if isFavourite {
                isFavourite = false
        }else{
                 isFavourite = true
        }
        let buttonImage = isFavourite ? Assets.filledStar.image : Assets.unFilledStar.image
        favoriteButton.setImage(buttonImage, for: .normal)

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
