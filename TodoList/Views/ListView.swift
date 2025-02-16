//
//  ListView.swift
//  TodoList
//
//  Created by spike on 16.02.25.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "this is the first title!",isCompleted: false),
        ItemModel(title: "this is the second title!",isCompleted: true),
        ItemModel(title: "this is the third title!",isCompleted: false),
        
        
    ]

    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item:item)
                    
           
            }
        }
        .listStyle(PlainListStyle())
        .navigationBarTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton (),
            trailing:
                NavigationLink("Add", destination: AddView())
            
        )
        }
        
        
}

#Preview {
    NavigationView{
        ListView()
    }
    
}
