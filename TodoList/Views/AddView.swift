//
//  AddView.swift
//  TodoList
//
//  Created by spike on 16.02.25.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
                    VStack {
                        TextField("Type something here...", text: $textFieldText)
                            .padding(.horizontal)
                            .frame(height: 55)
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(10)
                        
                        Button(action:{}
                               ,label: {
                            Text("Save".uppercased())
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(height: 55)
                                .frame(maxWidth: .infinity)
                                .background(Color.accentColor)
                                .cornerRadius(10)
                        })
                    }
                    .padding(14)
                }
                
    }
}

#Preview {
    AddView()
}
