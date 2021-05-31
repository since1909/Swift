//
//  ItemRow.swift
//  iDine
//
//  Created by 박지원 on 2021/05/15.
//

import SwiftUI

struct ItemRow: View {
    let colors: [String:Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    let item: MenuItem
    
    var body: some View {
        HStack{
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self){
                //String 자체는 객체이기 때문에 그것 자체로 unique 하다는 걸 swiftUI에 알려줘야함
                restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default : .black])
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
