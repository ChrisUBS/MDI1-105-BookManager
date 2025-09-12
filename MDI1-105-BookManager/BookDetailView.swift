//
//  BookDetailView.swift
//  MDI1-105-BookManager
//
//  Created by Christian Bonilla on 11/09/25.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    
    var body: some View {
        Text(book.title)
        Text(book.description)
    }
}

#Preview {
    let book = Book(title: "The Fellowship of The Ring", image: "lotr_fellowship", description: "The first book in the trilogy")
    BookDetailView(book: book)
}
