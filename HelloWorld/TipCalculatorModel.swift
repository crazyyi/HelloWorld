//
//  TipCalculator.swift
//  HelloWorld
//
//  Created by Yi Zeng on 6/19/14.
//  Copyright (c) 2014 afun. All rights reserved.
//

import Foundation

class TipCalculatorModel {
    var total: Double
    var taxPct:Double
    var subTotal:Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
    }
    
    func calcTipWithTipPct(tipPct:Double) ->Double {
        return subTotal * tipPct
    }
    
    func printPossibleTips() {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:Double[] = [0.15, 0.18, 0.20]
        
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
    
}

