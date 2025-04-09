//
//  TodoListViewModel.swift
//  TodoApp
//
//  Created by นางสาวพรทิพย์พา ธีระประเวศ on 9/4/2568 BE.
//

import Foundation
import FirebaseFirestore

class TodoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
