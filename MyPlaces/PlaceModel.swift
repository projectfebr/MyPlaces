//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Александр Болотов on 02.12.2020.
//

import RealmSwift

class Place: Object {
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
    func savePlaces() {

        for place in restaurantNames {
            
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else {
                return
            }
            
            let newPlace = Place()
            newPlace.name = place
            newPlace.location = "Perm"
            newPlace.type = "Gastrobar"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(place: newPlace)
        }

    }
}


