//
//  BackendConfiguration.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 09.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import Foundation

protocol BackendConfiguration
{
    func baseUrl() throws -> URL
    var timeout: TimeInterval { get }
    var cachePolicy: URLRequest.CachePolicy { get }
    
    //custom parameters example
}

extension BackendConfiguration
{
    var timeout: TimeInterval
    {
        return 10.0
    }
    
    var cachePolicy: URLRequest.CachePolicy
    {
        return .useProtocolCachePolicy
    }
}

struct TestConfiguration: BackendConfiguration
{
   
    
    func baseUrl() throws -> URL
    {
        if let url = URL(string: "https://api.github.com/")
        {
            return url
        }
        throw APIRequestError.invalidUrl(errorDescription: String(describing: self))
    }
}

struct LiveConfiguration: BackendConfiguration
{
//    var urlLanguageCode: String {
//
//        return ChannelHelper.shared.channel.shopChannel
//    }
    
    func baseUrl() throws -> URL
    {
        if let url = URL(string: "https://api.github.com/")
        {
            return url
        }
        throw APIRequestError.invalidUrl(errorDescription: String(describing: self))
    }
}
