//
//  Counter.swift
//  QuickSample
//
//  Created by 田邉　裕貴 on 2016/04/06.
//  Copyright © 2016年 田邉　裕貴. All rights reserved.
//

import UIKit

class Counter: NSObject {
    
    let kCount = "COUNT"
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    // 値を 1 増やす
    func countUp() {
        let currentCount = getCount()
        let nextCount = currentCount + 1
        userDefaults.setInteger(nextCount, forKey: kCount)
        userDefaults.synchronize()
    }
    
    // 現在の値を返す
    func getCount() -> Int {
        if userDefaults.objectForKey(kCount) == nil {
            return 0
        } else {
            return userDefaults.integerForKey(kCount)
        }
    }
    
    // 0 に戻す
    func reset() {
        userDefaults.setInteger(0, forKey: kCount)
    }
    
}