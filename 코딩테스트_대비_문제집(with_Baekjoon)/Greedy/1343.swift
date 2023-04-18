//12ms
import Foundation

var input = readLine()!
input = input.replacingOccurrences(of: "XXXX", with: "AAAA")
input = input.replacingOccurrences(of: "XX", with: "BB")

if input.contains("X") {
    print(-1)
}else {
    print(input)
}
