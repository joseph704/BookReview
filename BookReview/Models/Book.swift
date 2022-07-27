//
//  Book.swift
//  BookReview
//
//  Created by Joseph Cha on 2022/07/26.
//

import Foundation

struct Book: Decodable {
    let title: String
    let image: String?
    
    var imageURL: URL? {
        get {
            URL(string: image ?? "")
        }
    }
}
