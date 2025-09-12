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
        NavigationStack {
            VStack {
                Text("Details for:")
                    .padding()
                HStack {
                    Image(book.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .padding(.horizontal)
                    Text(book.title)
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                }
                Text("Description")
                    .fontWeight(.bold)
                    .padding(.top)
                Text(book.description)
                
                Text("Author")
                    .fontWeight(.bold)
                    .padding(.top)
                Text(book.author)
                
                Text("Year")
                    .fontWeight(.bold)
                    .padding(.top)
                Text(String(book.year))
                
                Text("Category")
                    .fontWeight(.bold)
                    .padding(.top)
                Text(book.category)
                
                Spacer()
            } // END - VStack
            .navigationTitle(book.title)
            .navigationBarTitleDisplayMode(.inline)
        } // END - Navigation Stack
    }
}

#Preview {
    let book = Book(title: "The Fellowship of The Ring", image: "lotr_fellowship", description: "The first book in the trilogy", author: "Thomas J. Brow", year: 2000, category: "Adventure")
    BookDetailView(book: book)
}
