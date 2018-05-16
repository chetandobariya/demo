//
//  APIEndpoint.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 10.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import Foundation
import ObjectMapper


class ApiEndpoint<T: Mappable>
{
    var config: BackendConfiguration {
        
        return BackendManager.defaultConfiguration
    }
}
