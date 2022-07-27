//
//  BookReview.swift
//  BookReview
//
//  Created by Joseph Cha on 2022/07/27.
//

import Foundation

struct BookReview: Codable {
    let title: String
    let imageURL: URL?
    let content: String
}
