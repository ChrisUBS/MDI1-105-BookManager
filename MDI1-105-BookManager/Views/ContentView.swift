//
//  ContentView.swift
//  MDI1-105-BookManager
//
//  Created by Christian Bonilla on 11/09/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var books = getBooks()
    
    var body: some View {
        NavigationStack {
            List($books, id: \.self.id) { $book in
                NavigationLink(destination: BookDetailView(book: $book)) {
                    BookListItemView(book: book)
                }
            }
            .navigationTitle("My Books")
        }
    }
}

#Preview {
    ContentView()
}

// jorge.marin@sdgku.edu
// Inbox in Canvas
