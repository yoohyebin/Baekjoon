//16ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let k = input[0], n = input[1]
var arr = [Int]()

for _ in 0..<k{
    arr.append(Int(readLine()!)!)
}

var start = 1, end = arr.max()!

while start <= end {
    let mid = (start+end)/2
    var cnt = 0
    
    for a in arr {
        cnt += (a/mid)
    }
    
    if cnt < n {
        end = mid-1
    }else {
        start = mid+1
    }
}
print(end)
