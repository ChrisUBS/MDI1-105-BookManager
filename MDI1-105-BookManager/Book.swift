//
//  Book.swift
//  MDI1-105-BookManager
//
//  Created by Christian Bonilla on 11/09/25.
//

import Foundation

struct Book: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var description: String
    var author: String
    var year: Int
    var category: String
}
