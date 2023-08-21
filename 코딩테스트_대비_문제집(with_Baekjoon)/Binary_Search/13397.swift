//12ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0], input[1])
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var start = 0, end = arr.max() ?? 0
var result = Int.max

func isPossible(_ mid: Int) -> Bool {
    var cnt = 1
    var minValue = arr[0], maxValue = arr[0]
    
    for i in 1..<n {
        if arr[i] < minValue {
            minValue = arr[i]
        }
        if arr[i] > maxValue {
            maxValue = arr[i]
        }
        
        if((maxValue - minValue) > mid) {
            cnt += 1
            minValue = arr[i]
            maxValue = arr[i]
        }
    }
    return cnt <= m
}

while start <= end {
    let mid = (start + end)/2
    
    if isPossible(mid) {
        if result > mid {
            result = mid
        }
        end = mid-1
    }else {
        start = mid+1
    }
}
print(result)
