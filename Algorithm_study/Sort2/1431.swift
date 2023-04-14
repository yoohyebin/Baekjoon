//20ms
let n = Int(readLine()!)!
var data = [String]()

for _ in 0..<n {
    data.append(readLine()!)
}

func getSum(_ s: String) -> Int{
    let str = Array(s).map { String($0) }
    var sum = 0
    for char in str {
        if Int(char) != nil {
            sum += Int(char)!
        }
    }
    return sum
}

data.sort {
    if $0.count == $1.count {
        if getSum($0) == getSum($1) {
            return $0 < $1
        } else {
            return getSum($0) < getSum($1)
        }
    } else {
        return $0.count < $1.count
    }
}

data.forEach { print($0) }


//8ms
let N = Int(readLine()!)!

var list = [String]()

for _ in 0..<N {
    list.append(readLine()!)
}

var result = list
    .map { str -> (Int, Int, String) in
        var count = 0
        var sum = 0
        for char in str {
            count += 1
            sum += Int(String(char)) ?? 0
        }
        
        return (count, sum, str)
    }
    .sorted { lhs, rhs -> Bool in
        if lhs.0 == rhs.0 {
            if lhs.1 == rhs.1 {
                return lhs.2 < rhs.2
            } else { return lhs.1 < rhs.1 }
        } else { return lhs.0 < rhs.0 }
    }
    .map(\.2)
    .joined(separator: "\n")

print(result)
