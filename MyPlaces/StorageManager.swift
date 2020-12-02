//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Александр Болотов on 02.12.2020.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func saveObject(place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    static func deleteObject(place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}
