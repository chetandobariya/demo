//
//  DataUpdateHelper.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 10.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import UIKit
import ObjectMapper

/// The DataUpdateHelper acts as an interface to the BackendManager providing app data updating functionality.

class DataUpdateHelper {
    
    static let shared = DataUpdateHelper()
    private let backendManager = BackendManager()

    func fetchRepositoriesData(completion: @escaping (Result<[Repositories]>) -> Void) {
        
        let endPoint = RepositoriesDataEndPoint()
        
//        guard let url = try? endPoint.url() else {
//            return
//        }
        
        self.backendManager.requestObjects(from: endPoint, completion: { result in
            completion(result)
        })
        
    }
//    func fetchImage(for url: URL, completion: @escaping (Result<UIImage>) -> Void) {
//
//        let endPoint = UrlEndPoint(customUrl: url)
//
//        self.backendManager.requestImage(from: endPoint, completion: { result in
//            completion(result)
//        })
//
//    }

//    @objc func communicatePushProvider() {
//
//        guard case .loggedIn(let user) = CookieManager.shared.loginState else {
//
//            return
//        }
//
//        let parameters: [String: Any] = [
//
//            "pushNotificationCustomerID": user.customerId,
//            "platform": "ios",
//            "email": user.username,
//            "pushprovider": "localytics"
//        ]
//
//        let endPoint = PushProviderEndpoint(parameters: parameters)
//
//        self.backendManager.requestJSON(endPoint: endPoint) { result in
//
//            switch result {
//
//            case .failure(let error):
//
//                CrashlyticsManager.shared.logError(error: error, userInfo: ["error description":error.localizedDescription])
//
//            case .success(let response):
//
//                if let success = response["success"] {
//
//                    // success code 0 represent that user failed to register in magento backend
//                    // log error message in crashlytics
//                    if success as? Int == 0, let errorMessage = response["message"] as? String {
//
//                        let  error  =  NSError ( domain :  "com.mytheresa" ,  code : 0,  userInfo :  nil )
//                        CrashlyticsManager.shared.logError(error: error, userInfo: ["error description":errorMessage])
//                    }
//
//                }
//            }
//
//        }
//    }
}
