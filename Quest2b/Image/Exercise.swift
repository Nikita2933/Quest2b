//
//  Exercise.swift
//  Quest2
//
//  Created by Никита on 20.01.2020.
//  Copyright © 2020 Nikita. All rights reserved.
//

import UIKit
import SQLite





 var dataArray: [Exercise] {
    return [Exercise(name: "Анальгин", image: UIImage(named:  "image1.jpg"), info: "\(getinfo(iD: 1))"),
    Exercise(name: "Кеторол", image: UIImage(named:  "image2.jpg"), info: "\(getinfo(iD: 2))"),
    Exercise(name: "Ибупрофен", image: UIImage(named:  "image3.jpg"), info: "\(getinfo(iD: 3))")]
}

class Exercise {
    
    var name: String
    var image: UIImage?
    var info: String
    
    init (name: String, image: UIImage?, info: String) {
        self.name = name
        self.image = image
        self.info = info
    }
}

// MARK: Database
func getinfo(iD:Int) -> Any {
    var data = ""
    let table = Table("info")
    let id = Expression<Int64>("id")
    let info = Expression<String>("info")
    do {
        let path = Bundle.main.path(forResource: "infodatabase", ofType: "db")!
        let db = try Connection( path, readonly: true)
        let res = table.filter(id == iD.datatypeValue)
        for result in try db.prepare(res){
            data.append("\(result[info])")
        }
        } catch {
            print(error)
    }
        return data
}
