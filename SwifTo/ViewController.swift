//
//  ViewController.swift
//  SwifTo
//
//  Created by Naveen on 16/06/16.
//  Copyright © 2016 TTN-Digital. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.test()
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func test(){
        let objPage1 = Page1(className: "my class")
        let str : Int =  objPage1.first(22);
        print("this is firt test"+"\(str)")
        print("class name : " + objPage1.className)
        //find min max from array
        let array : Array = [3,5,2,5,8,3,77,8,12,34]
        let minMax = objPage1.minMax(array);
        print("min is \(minMax.min) and max is \(minMax.max)")
     
        let mutableArray : NSMutableArray = [3,1,5,7,22,4,99,8,7,6,0]
        print(mutableArray)
        
        
        //get the current time
        let currentTime = objPage1.getTime()
        print("Hour: \(currentTime.hour) Min: \(currentTime.min) Sec: \(currentTime.sec))")

    }
    
}

