//228ms
let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
let m = Int(readLine()!)!
let b = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in b {
    var start = 0, end = n-1, flag = false
    
    while start <= end {
        var mid = (start + end)/2
        
        if i == a[mid] {
            flag = true
            print(1)
            break
        }else if i > a[mid] {
            start = mid + 1
        }else {
            end = mid - 1
        }
    }
    
    if !flag {
        print(0)
    }
}

//148ms
let N = Int(readLine()!)!
let A = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
let M = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = ""

input.forEach {
    result += A.contains($0) ? "1\n" : "0\n"
}

print(result)
