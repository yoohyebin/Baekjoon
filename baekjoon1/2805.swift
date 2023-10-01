let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let trees = readLine()!.split(separator: " ").map{Int(String($0))!}
var start = 1, end = trees.reduce(0, +)

while start <= end {
    var mid = (start+end)/2
    var cnt = 0
    
    for tree in trees {
        if tree > mid {
            cnt += tree-mid
        }
    }
    
    if cnt >= nm[1] {
        start = mid + 1
    } else {
        end = mid-1
    }
}

print(end)
