//
//  ItemModel.swift
//  TodoList
//
//  Created by spike on 16.02.25.
//

import Foundation

struct ItemModel: Identifiable{
    
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
}
