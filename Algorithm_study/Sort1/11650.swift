//240ms
let N = Int(readLine()!)!
var xy = [[Int]]()

for _ in 0..<N {
    xy.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in xy.sorted(by: {$0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0]}) {
    print("\(i[0]) \(i[1])")
}
