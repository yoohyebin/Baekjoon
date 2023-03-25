//476ms
let n = Int(readLine()!)!

for _ in 0..<n {
    var stringValue = readLine()!
    var left = [Character](), right = [Character]()
    
    for s in stringValue{
        switch s{
        case "<":
            if !left.isEmpty {
                right.append(left.removeLast())
            }
        case ">":
            if !right.isEmpty {
                left.append(right.removeLast())
            }
        case "-":
            if !left.isEmpty{
                left.removeLast()
            }
        default:
            left.append(s)
        }
    }
    print(String(left+right.reversed()))
}
