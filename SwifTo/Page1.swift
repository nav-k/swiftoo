//
//  Page1.swift
//  SwifTo
//
//  Created by Naveen on 16/06/16.
//  Copyright © 2016 TTN-Digital. All rights reserved.
//
import UIKit
class Page1{
    var className:String
    
    init(className:String){
     self.className = className
    }
    
    func first(value:Int) -> Int {
        return 22
    }

    func minMax(array:[Int]) -> (min:Int, max:Int) {
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            }else if value > currentMax {
                currentMax = value
            }
        }
        return(currentMin,currentMax)
    }
    
    func getTime() -> (hour:Int, min:Int, sec:Int) {
        let currentDateTime = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Hour,.Minute,.Second], fromDate: currentDateTime)
        let hour = components.hour
        let min = components.minute
        let sec = components.second
        
        components.hour = 20;
        
        return (hour,min,sec)

    }
}
