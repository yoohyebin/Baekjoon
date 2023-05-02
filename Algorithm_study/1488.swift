//16ms
let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var op = readLine()!.split(separator: " ").map{Int(String($0))!}
var minValue = 1000000001, maxValue = -1000000001

func cal(_ result: Int, _ x: Int) {
    if x == n {
        maxValue = max(result, maxValue)
        minValue = min(result, minValue)
        return
    }
    
    for i in 0..<4 {
        if op[i] > 0 {
            op[i] -= 1
            if i == 0 {
                cal(result+arr[x], x+1)
            }else if i == 1 {
                cal(result-arr[x], x+1)
            }else if i == 2 {
                cal(result*arr[x], x+1)
            }else if i == 3 {
                cal(result/arr[x], x+1)
            }
            op[i] += 1
        }
    }
    
}

cal(arr[0], 1)
print("\(maxValue)\n\(minValue)")
