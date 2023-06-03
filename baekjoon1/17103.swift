//76ms
import Foundation

var isPrimeNumber = [Bool](repeating: true, count: 1000001)
isPrimeNumber[0] = false
isPrimeNumber[1] = false

for i in 2..<Int(sqrt(Double(1_000_000)) + 1) {
    if isPrimeNumber[i] {
        var j = 2
        while i * j <= 1_000_000 {
            isPrimeNumber[i * j] = false
            j += 1
        }
    }
}

let T = Int(readLine()!)!
for _ in 0..<T {
    let n = Int(readLine()!)!
    var result = 0
    
    for i in 1...n / 2 {
        if isPrimeNumber[i] && isPrimeNumber[n - i] {
            result += 1
        }
    }
    print(result)
}
