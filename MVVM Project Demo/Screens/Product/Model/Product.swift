//
//  Product.swift
//  MVVM Project Demo
//
//  Created by Fahad on 30/04/2024.
//

import Foundation

struct Product : Codable {
    let id : Int
    let title : String
    let price : Double
    let description : String
    let category : String
    let image : String
    let rating : Rate
}

struct Rate : Codable{
    let rate : Double
    let count : Int
}
