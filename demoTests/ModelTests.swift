//
//  ModelTests.swift
//  demoTests
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 16.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

//import Foundation
//import XCTest
//import ObjectMapper
//@testable import demo
//
//class ModelTests: XCTestCase {
//    
//    func testCartMapping() {
//        
//        let subTotal = "$ 715.00"
//        let jsonString = "{\"items\":[{\"id\":\"817327\",\"quote_item_id\":\"69563165\",\"qty\":1,\"size\":\"10\",\"size_harmonized\":\"\",\"stocklevel\":\"\",\"sku\":\"P00260936\",\"option_id\":\"2542\",\"product_id\":\"817327\",\"product_url\":\"000823-off-the-shoulder-cotton-top-817327.html\",\"designer\":\"Peter Pilotto\",\"name\":\"Off-the-shoulder cotton top\",\"waregroup\":\"clothing\",\"image\":\"https:\\/\\/img.mytheresa.com\\/220\\/220\\/90\\/jpeg\\/catalog\\/product\\/28\\/P00260936.jpg\",\"price\":\"$ 715.00\",\"old_price\":\"\",\"handling\":\"\",\"row_total\":\"$ 715.00\"}],\"subtotal\":\"\(subTotal)\"}"
//        
//        guard let cart = Mapper<Repositories>().map(JSONString: jsonString),
//            cart.subTotal == subTotal,
//            cart.items?.isEmpty == false else {
//                
//                XCTFail("failed mapping cart")
//                
//                return
//        }
//    }
//    
//    func testCartItemMapping() {
//        
//        let id = "817327"
//        let quoteItemId = "69563165"
//        let quantity = 1
//        let size = "10"
//        let sizeHarmonized = "10_harmonized"
//        let stockLevel = "stock_level"
//        let sku = "P00260936"
//        let optionId = "2542"
//        let productId = "817327"
//        let productUrl = "000823-off-the-shoulder-cotton-top-817327.html"
//        let designer = "Peter Pilotto"
//        let name = "Off-the-shoulder cotton top"
//        let wareGroup = "clothing"
//        let imageUrl = "https://img.mytheresa.com/220/220/90/jpeg/catalog/product/28/P00260936.jpg"
//        let price = "$ 715.00"
//        let oldPrice = "old_price"
//        let handling = "handling"
//        let rowTotal = "$ 715.00"
//        
//        let jsonString = "{\"id\":\"\(id)\",\"quote_item_id\":\"\(quoteItemId)\",\"qty\":\(quantity),\"size\":\"\(size)\",\"size_harmonized\":\"\(sizeHarmonized)\",\"stocklevel\":\"\(stockLevel)\",\"sku\":\"\(sku)\",\"option_id\":\"\(optionId)\",\"product_id\":\"\(productId)\",\"product_url\":\"\(productUrl)\",\"designer\":\"\(designer)\",\"name\":\"\(name)\",\"waregroup\":\"\(wareGroup)\",\"image\":\"\(imageUrl)\",\"price\":\"\(price)\",\"old_price\":\"\(oldPrice)\",\"handling\":\"\(handling)\",\"row_total\":\"\(rowTotal)\"}"
//        
//        guard let cartItem = Mapper<Owner>().map(JSONString: jsonString),
//            designer == cartItem.designer,
//            handling == cartItem.handling,
//            id == cartItem.id,
//            imageUrl == cartItem.imageUrl?.absoluteString,
//            name == cartItem.name,
//            oldPrice == cartItem.oldPrice,
//            optionId == cartItem.optionId,
//            price == cartItem.price,
//            productId == cartItem.productId,
//            productUrl == cartItem.productUrl,
//            quantity == cartItem.quantity,
//            quoteItemId == cartItem.quoteItemId,
//            rowTotal == cartItem.rowTotal,
//            size == cartItem.size,
//            sizeHarmonized == cartItem.sizeHarmonized,
//            sku == cartItem.sku,
//            stockLevel == cartItem.stockLevel,
//            wareGroup == cartItem.waregroup else {
//                
//                XCTFail("failed mapping cart item")
//                
//                return
//        }
//    }
//    
//    
//    
//}
