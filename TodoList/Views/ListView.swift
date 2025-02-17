//
//  ListView.swift
//  TodoList
//
//  Created by spike on 16.02.25.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    

    var body: some View {
        List{
            ForEach(listViewModel.items) { item in
                ListRowView(item:item)
                    .onTapGesture {
                    withAnimation(.linear){
                        listViewModel.updateItem(item: item)
                        
                    }
                }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
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
    .environmentObject(ListViewModel())
    
}
