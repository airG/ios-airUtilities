//: Playground - noun: a place where people can play

import UIKit

extension Int {
    var inThousands: String {
        let form = NumberFormatter()
        form.roundingIncrement = 1000
        form.numberStyle = .decimal
        form.locale = Locale(identifier: "en_US")
        
        var thousandsString: String = self < 0 ? "-" : ""
        
        let absoluteValue = abs(self)
        
        if absoluteValue >= 1000, let rounded = form.string(from: NSNumber(value: absoluteValue)) {
            let new = rounded.prefix(rounded.count - 4).appending("k")
            thousandsString.append(new)
        } else {
            thousandsString.append(String(absoluteValue))
        }
        
        return thousandsString
    }
}
