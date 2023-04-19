//260ms
func gcd(_ a: Int, _ b: Int) -> Int {
    return a == 0 ? b : gcd(b%a, a)
}

let n = Int(readLine()!)!
let data = readLine()!.split(separator: " ").map{Int(String($0))!}
var g = 0

if n == 2{
    g = gcd(data[0], data[1])
}else{
    g = gcd(data[0], gcd(data[1], data[2]))
}

for i in 1..<(g/2+1) {
    if g%i == 0{
        print(i)
    }
}
print(g)

//12ms
import Foundation

func gcd(_ a : Int,_ b : Int) -> Int {
    if a == 0 { return b }
    return gcd(b % a, a)
}

let n = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map{ Int($0)! }
var g : Int = 1
var result : Array<Int> = []
if n == 2 {
    g = gcd(numbers[0], numbers[1])
} else if n == 3 {
    g = gcd(numbers[0], gcd(numbers[1], numbers[2]))
}

for i in 1...Int(sqrt(Double(g))){
    if g % i == 0 {
        result.append(i)
        if i != g/i {
            result.append(g/i)
        }
    }
}
for result in result.sorted(){
    print(result)
}
