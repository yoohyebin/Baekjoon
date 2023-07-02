//44ms
import Foundation

func split(_ n: Double) -> String {
    if n == 0 {
        return "-"
    }
    
    let line = split(n-1)
    return line + String(repeating: " ", count: Int(pow(3, n-1))) + line
}

while let input = readLine(), let n = Double(input) {
    print(split(n))
}
