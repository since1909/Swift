//
//  ItemDetail.swift
//  iDine
//
//  Created by 박지원 on 2021/05/16.
//

import SwiftUI

struct ItemDetail: View {
    //order상태 변화를 관찰함 -> 초기화 안해도 됨(계속 상태 바뀔 수 있기때문)
    @EnvironmentObject var order:Order
    let item: MenuItem
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
                
            }
            Text(item.description)
                .padding()
            Button("Order This!"){
                order.add(item: item)
            }.font(.headline)
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetail(item: MenuItem.example)
                .environmentObject(Order())
        }

    }
}
