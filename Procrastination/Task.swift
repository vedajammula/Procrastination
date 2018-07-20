//
//  Task.swift
//  Procrastination
//
//  Created by veda jammula on 7/19/18.
//  Copyright © 2018 Safia & Veda. All rights reserved.
//

import Foundation

struct Task {
    var title: String
    var sliderMaxTime: Int
    
    
    init(title: String , time: Int) {
        self.title = title
        self.sliderMaxTime = time
    }
    
    
}
