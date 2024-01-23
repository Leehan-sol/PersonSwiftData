//
//  Person.swift
//  PersonSwiftData
//
//  Created by hansol on 2024/01/23.
//

import Foundation
import SwiftData

@Model
class Person {
    var name: String
    var age: String
    
    init(name: String, age: String) {
        self.name = name
        self.age = age
    }
    
}
