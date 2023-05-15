//8ms
import Foundation

let s = readLine()!
let k = readLine()!

s.filter{$0.isLetter}.contains(k) ? print("1") : print("0")
