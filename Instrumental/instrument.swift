//
//  instrument.swift
//  Instrumental
//
//  Created by epita on 17/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import Foundation

class instra {
    var name:String?
    var image:String?
    var subtitle:String?
    var description:String?
    
    init(name:String,
         image:String,
         subtitle:String,
        description:String
        ){
        self.name = name
        self.image = image
        self.subtitle = subtitle
        self.description = description
    }
}
