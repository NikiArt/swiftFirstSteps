//
//  main.swift
//  geekbrainsFirstSteps
//
//  Created by Nikita Boiko on 05/10/2019.
//  Copyright © 2019 Nikita Boiko. All rights reserved.
//

import Foundation

func getNumber() -> Int {
    let maxBoard: UInt32 = 20
    var currentValue = Int(arc4random_uniform(maxBoard) + 1)
    currentValue = currentValue * (arc4random_uniform(4)>0 ? 1 : -1) //max 4, because need biggeer percent of positive numbers
    return currentValue
}

func getRoot(a: Int, b: Int, d: Int, negative: Bool) -> String {
    var currentRoot: Double = 0
    if negative {
        currentRoot = (Double((-1)*b) + sqrt(Double(d)))/Double(2*a)
    } else {
        currentRoot = (Double((-1)*b) - sqrt(Double(d)))/Double(2*a)
    }
    return String(format: "%.3f", currentRoot)
}

var a: Int = getNumber()
var b: Int = getNumber()
var c: Int  = getNumber()

print("\(a)*xˆ2\(b<0 ? "" : "+")\(b)*x\(c<0 ? "" : "+")\(c) = 0")

let d = b*b - 4*a*c
print(d)
if (d>0) {
    print("Дискриминант больше нуля. Корня два")
    let xOne = getRoot(a: a, b: b, d: d, negative: false)
    let xTwo = getRoot(a: a, b: b, d: d, negative: true)
    print("Ответ: Корень 1 = \(xOne), Корень 2 = \(xTwo)")
} else if (d == 0) {
    print("Дискриминант равен нулю. Корень один")
    let xOne = getRoot(a: a, b: b, d: d, negative: false)
    print("Ответ: Корень 1 = \(xOne)")
} else {
    print("Дискриминант меньше нуля. Корней нет")
}


