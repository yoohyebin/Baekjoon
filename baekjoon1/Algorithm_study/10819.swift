//24ms
let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var idx = [Int]()
var result = 0

func cal(_ x: Int) {
    if x == n {
        var s = 0
        for i in 0..<n-1 {
            s += abs(arr[idx[i]] - arr[idx[i+1]])
        }
        result = max(result, s)
        return
    }
    
    for i in 0..<n {
        if !idx.contains(i) {
            idx.append(i)
            cal(x+1)
            idx.removeLast()
        }
    }
}

cal(0)
print("\(result)")
