//
//  Models.swift
//  Ikea
//
//  Created by Giuseppe Grammatico on 30/06/2021.
//

import UIKit

struct Product {
    var name: String
    var image: UIImage
    var price: String
}

struct Product2 {
    var name: String
    var image: UIImage
    var price: String
}



extension Product {
    static func mocks() -> [Product] {
        [
          Product(name: "Fanbyn", image: #imageLiteral(resourceName: "Fanbyn"), price: "49.99€"),
          Product(name: "PS 1995", image: #imageLiteral(resourceName: "Ikea PS1995"), price: "19.99€"),
          Product(name: "Mandal", image: #imageLiteral(resourceName: "Mandal"), price: "199.99€"),
          Product(name: "Malm", image: #imageLiteral(resourceName: "Malm"), price: "99.99€")
        ]
    }
}

extension Product2 {
    static func mocks() -> [Product2] {
        [
          Product2(name: "Fanbyn", image: #imageLiteral(resourceName: "Fanbyn"), price: "49.99€"),
          Product2(name: "PS 1995", image: #imageLiteral(resourceName: "Ikea PS1995"), price: "19.99€"),
          Product2(name: "Mandal", image: #imageLiteral(resourceName: "Mandal"), price: "199.99€"),
          Product2(name: "Malm", image: #imageLiteral(resourceName: "Malm"), price: "99.99€")
        ]
    }
}

