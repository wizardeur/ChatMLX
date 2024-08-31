//
//  LocalModelItemView.swift
//  ChatMLX
//
//  Created by John Mai on 2024/8/13.
//

import SwiftUI

struct LocalModelItemView: View {
    @Binding var model: LocalModel
    var onDelete: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Text(model.name)
                Spacer()
                Button(action: onDelete) {
                    Image(systemName: "trash")
                        .foregroundColor(.red)
                }
                .buttonStyle(.plain)
            }
        }
        .padding()
        .background(.black.opacity(0.3))
        .listRowSeparator(.hidden)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .black, radius: 2)
    }
}