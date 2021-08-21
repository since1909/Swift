//
//  Petitions.swift
//  whitehousePetitions
//
//  Created by 박지원 on 2021/06/09.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
