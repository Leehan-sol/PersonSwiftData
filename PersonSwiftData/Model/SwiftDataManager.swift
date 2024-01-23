//
//  SwiftDataManager.swift
//  PersonSwiftData
//
//  Created by hansol on 2024/01/23.
//

import Foundation
import SwiftData

class SwiftDataManager {
    static var shared = SwiftDataManager()
    var container = try? ModelContainer(for: Person.self)
    var persons: [Person] = []
    
    
    // Create
    @MainActor func createPerson(name: String, age: String) {
        let person = Person(name: name, age: age)
        
        // container?.mainContext.insert(memo)를 사용하여 메모를 데이터베이스에 추가
        container?.mainContext.insert(person)
        
    }
    
    // Read
    @MainActor func loadPerson() {
        // FetchDescriptor를 사용하여 Person 엔터티의 데이터를 가져옴
        let descriptor = FetchDescriptor<Person>()
        
        // container?.mainContext.fetch(descriptor)를 통해 데이터베이스에서 메모를 가져옴
        persons = (try? container?.mainContext.fetch(descriptor)) ?? []
        
    }
    
    // Update
    
    
    // Delete
    @MainActor func deletePerson() {
        if let lastPerson = persons.last {
            container?.mainContext.delete(lastPerson)
        }
    }
    
}
