//
//  DataUpdateHelperTests.swift
//  demoTests
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 10.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import UIKit
import XCTest
@testable import demo

class DataUpdateHelperTests: XCTestCase {
    

    
  
    func checkRepositoryItem(_ repositoryItem: Repositories) {
        
        XCTAssertTrue(repositoryItem.name?.isEmpty == false, "item name should not be empty")
        XCTAssertTrue(repositoryItem.name?.isEmpty == false || repositoryItem.owner?.login?.isEmpty == false, "item \(repositoryItem) should either have an url or owner")
        
        if let url = repositoryItem.owner?.avatarUrl {
            
            XCTAssertTrue(url.scheme == "https", "item \(repositoryItem) should provide secure url scheme (\(url))")
        }
        
//        for owner in repositoryItem.owner ?? [] {
//
//            self.checkRepositoryItem(owner)
//        }
    }
    
    func testRepositoryData() {
        
        let responseExpectation = self.expectation(description: "did receive response")
        
        DataUpdateHelper.shared.fetchRepositoriesData { (result) in
            
            responseExpectation.fulfill()
            
            
            var repositories  = [Repositories]()
            if case .success(let newRepositories) = result {
                
                repositories = newRepositories
            }
            
            XCTAssertFalse(repositories.isEmpty, "failed creating objects from response")

            for repository in repositories {
                
                self.checkRepositoryItem(repository)
            }
            
            var error: Error? = nil
            if case .failure(let responseError) = result {
                
                error = responseError
            }
            
            XCTAssertNil(error, error!.localizedDescription)
        }
        
        self.waitForExpectations(timeout: 5.0) { (optionalError) in
            
            if let error = optionalError {
                
                print(error.localizedDescription)
            }
        }
    }
    
}
