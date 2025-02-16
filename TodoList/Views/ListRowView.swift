//
//  ListRowView.swift
//  TodoList
//
//  Created by spike on 16.02.25.
//

import SwiftUI

  

struct ListRowView: View {
    let item : ItemModel
    
    var body: some View {
        HStack {
            Image (systemName:item.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text (item.title)
            Spacer()
            
        }
        .font(.title2)
        .padding(.vertical,8)
        
    }
}

#Preview (traits: .sizeThatFitsLayout){
    let item1 = ItemModel(title: "first item", isCompleted: false)
    let item2 = ItemModel(title: "second item", isCompleted: true)
    
    return Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
    
}

