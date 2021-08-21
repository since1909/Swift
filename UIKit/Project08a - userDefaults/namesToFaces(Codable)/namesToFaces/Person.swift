//
//  Person.swift
//  namesToFaces
//
//  Created by 박지원 on 2021/06/13.
//

import UIKit

class Person: NSObject, Codable {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
