//
//  BookSearchResponseModel.swift
//  BookReview
//
//  Created by Joseph Cha on 2022/07/26.
//

import Foundation

struct BookSearchResponseModel: Decodable {
    var items: [Book] = []
}
