//92ms
import Foundation

let n = Int(readLine()!)!
var drink = readLine()!.split(separator: " ").map{Double(String($0))!}.sorted()
var sum = drink[n-1]

for i in  0..<n-1 {
    sum += (drink[i]/2)
}

print(ceil(sum) == floor(sum) ? Int(sum) : sum)


//60ms
let n = Int(readLine()!)!
let drink = readLine()!.split{ $0 == " " }.map{ Int($0)! }
let max = Double(drink.max()!)
let answer = (Double(drink.reduce(0, +)) - max)/2 + max
print(Int(answer*10)%10 == 0 ? Int(answer) : answer)
