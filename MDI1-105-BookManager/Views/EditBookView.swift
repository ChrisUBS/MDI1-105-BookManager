//
//  EditBookView.swift
//  MDI1-105-BookManager
//
//  Created by Christian Bonilla on 14/09/25.
//

import SwiftUI

struct EditBookView: View {
    @Binding var book: Book
    @Environment(\.dismiss) var dismiss
    
    let statuses = ["Planned", "Reading", "Finished"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section("BOOK DETAILS") {
                    TextField("Title", text: $book.title)
                    TextField("Author", text: $book.author)
                    
                    Picker("Status", selection: $book.status) {
                        ForEach(statuses, id: \.self) { status in
                            Text(status)
                        }
                    }
                    
                    TextField("Description", text: $book.description)
                }
                
                Section("MY RATING & REVIEW") {
                    Stepper("Rating: \(book.rating, specifier: "%.1f")", value: $book.rating, in: 0...5, step: 0.5)
                    
                    TextEditor(text: $book.review)
                        .frame(height: 100)
                }
            }
            .navigationTitle("Edit Book")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        dismiss() // solo cierra el formulario
                    }
                }
            }
        }
    }
}
