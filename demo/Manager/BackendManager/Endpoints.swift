//
//  Endpoints.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 09.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import Foundation
import Alamofire

class BaseEndpoint: APIRequestConvertible {
    
    var config: BackendConfiguration {
        
        return BackendManager.defaultConfiguration
    }
    
    var encoding: ParameterEncoding {
        
        return URLEncoding.default
    }
    
    var headers: HTTPHeaders? {
        
        return nil
    }
    
    var parameters: Parameters? {
        
        return nil
    }
    
    var method: HTTPMethod {
        
        return .get
    }
    
    func url() throws -> URL {
        
        return try self.config.baseUrl()
    }
}

class CustomEndpoint: BaseEndpoint {
    
    let pathComponent: String
    var customParameters: Parameters? = nil
    
    init(pathComponent: String) {
        
        self.pathComponent = pathComponent
    }
    
    init(pathComponent: String, parameters: Parameters? = nil) {
        
        self.pathComponent = pathComponent
        self.customParameters = parameters
    }
    
    override func url() throws -> URL {
        let baseUrl = try super.url().absoluteString
        let url = baseUrl.appending(self.pathComponent)
        return URL(string: url)!
    }
    
    override var parameters: Parameters? {
        
        return self.customParameters
    }
}

class UrlEndPoint: APIRequestConvertible {
    
    let customUrl: URL
    
    init(customUrl: URL) {
        
        self.customUrl = customUrl
    }
    
    func url() throws -> URL {
        
        return self.customUrl
    }
    
    var config: BackendConfiguration {
        
        return BackendManager.defaultConfiguration
    }
}



class RepositoryEndpoint: BaseEndpoint {
    
    override func url() throws -> URL {
        return try super.url().appendingPathComponent("repositories/")
    }
}

class RepositoriesDataEndPoint: ApiEndpoint<Repositories>, APIRequestConvertible {
    
    var encoding: ParameterEncoding {
        
        return JSONEncoding.default
    }
    
    func url() throws -> URL {
        
        return try self.config.baseUrl().appendingPathComponent("repositories")
    }
}
//class CheckoutCartEndpoint: BaseEndpoint {
//
//    override func url() throws -> URL {
//        return try super.url().appendingPathComponent(FirebaseManager.shared.getString(for: .appendixCart))
//    }
//}



//class PushProviderEndpoint: BaseEndpoint {
//
//    let initialParameters: Parameters
//
//    override var encoding: ParameterEncoding {
//
//        return URLEncoding(destination: .queryString)
//    }
//
//    override var headers: HTTPHeaders? {
//
//        if let userAgent = UserDefaultsHelper.userAgent {
//
//            return ["User-Agent": userAgent]
//        }
//
//        return nil
//    }
//
//    override var method: HTTPMethod {
//
//        return .post
//    }
//
//    init(parameters: [String: Any]) {
//
//        self.initialParameters = parameters
//    }
//
//    override var parameters: Parameters? {
//
//        return self.initialParameters
//    }
//
//    override func url() throws -> URL {
//
//        return try self.config.baseUrl().appendingPathComponent("cart" , isDirectory : true)
//    }
//}

//class NavigationItemsEndpoint: ApiEndpoint<NavigationItem>, APIRequestConvertible {
//
//    var encoding: ParameterEncoding {
//
//        return JSONEncoding.default
//    }
//
//    var headers: HTTPHeaders? {
//
//        if let userAgent = UserDefaultsHelper.userAgent {
//
//            return ["User-Agent": userAgent]
//        }
//
//        return nil
//    }
//
//    func url() throws -> URL {
//
//        return try self.config.baseUrl().appendingPathComponent(FirebaseManager.shared.getString(for: .apiNavigation))
//    }
//}
//

