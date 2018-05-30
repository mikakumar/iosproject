//
//  Books.swift
//  RoseQueenBooks.app
//
//  Created by epita on 14/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import Foundation

class Books {
    var title:String?
    var yearofrelease:String?
    var summary:String?
    var genre: String?
    var mc: String?
    var image: String?
    
    init(title:String,
         yearofrelease:String,
         summary:String,
         genre: String,
         mc: String,
         image: String
        ){
        self.title = title
        self.yearofrelease = yearofrelease
        self.summary = summary
        self.genre = genre
        self.mc = mc
        self.image = image
    }
    
    
}
