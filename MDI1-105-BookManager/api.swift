//
//  api.swift
//  MDI1-105-BookManager
//
//  Created by Christian Bonilla on 11/09/25.
//

import Foundation

func getBooks() -> [Book] {
    return [ // Hardcoded
        Book(title: "The Fellowship of The Ring", image: "lotr_fellowship", description: "The first book in the trilogy"),
        Book(title: "The Two Towers", image: "lotr_towers", description: "The second book in the trilogy"),
        Book(title: "The Return of The King", image: "lotr_king", description: "The third and last book in the trilogy"),
    ]
}
