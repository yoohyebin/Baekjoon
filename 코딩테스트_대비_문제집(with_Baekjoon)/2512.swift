//16ms
let n = Int(readLine()!)!
let money = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
let m = Int(readLine()!)!

var start = 0, end = money.last!, minBudget = 0, mid = 0

while start <= end {
    mid = (start+end)/2
    minBudget = 0
    
    for i in money {
        minBudget += (m>mid) ? mid : i
    }
    
    if minBudget > m {
        end = mid - 1
    }else{
        start = mid + 1
    }
}

print(minBudget > m ? mid-1 : mid)
