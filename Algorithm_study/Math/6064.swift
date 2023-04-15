//80ms
func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a%b)
}
func lcm(_ a: Int, _ b: Int) -> Int {
    return (a*b) / gcd(a, b)
}

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let m = input[0], n = input[1], x = input[2], y = input[3]
    var result = -1, maxValue = lcm(m,n)
    
    for i in stride(from: x, through: maxValue, by: m) {
        var ny = i%n
        if ny == 0 {
            ny = n
        }
        if ny == y {
            result = i
            break
        }
    }
    print("\(result)")
}

//40ms
import Foundation

func getLcm(l: Int, s: Int) -> Int {
    var large = l; var small = s
    var rest = large % small
    while rest > 0 {
        large = small
        small = rest
        rest = large % small
    }
    return l * s / small
}

let count = Int(readLine()!)!
var answer = Array(repeatElement(-1, count: count))
for i in 0..<count {
    var input = readLine()!.split(separator: " ").map{ Int($0)! }
    
    input[2] = input[2] == input[0] ? 0 : input[2]
    input[3] = input[3] == input[1] ? 0 : input[3]
    
    let l = input[0] > input[1] ? 0 : 1; let s = abs(l - 1)
    let lcm = getLcm(l: input[l], s: input[s])
    var num = input[l + 2] > 0 ? input[l + 2] : input[l]
    
    while num <= lcm {
        if num % input[s] == input[s + 2] {
            answer[i] = num
            break
        }
        num += input[l]
    }
}

for a in answer {
    print(a)
}
