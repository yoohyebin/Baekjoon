//100ms
let n = Int(readLine()!)!
var arr = [Int: Int]()

for _ in 0..<n {
    let t = Int(readLine()!)!
    arr[t, default: 0] += 1
}
let maxValue = arr.values.max()!

print(arr.filter{$0.value == maxValue}.keys.sorted().first!)

//68ms
let n = Int(readLine()!)!
var nums: [Int] = []
var maxCount = 1
var maxNumber = 0
var count = 1
    
for _ in 0..<n {
    nums.append(Int(readLine() ?? "0") ?? 0)
}
    
nums.sort()
maxNumber = nums[0]

for i in 1..<n {
    if nums[i] == nums[i-1] {
        count += 1
        if maxCount < count {
            maxCount = count
            maxNumber = nums[i-1]
        }
    } else {
        count = 1
    }
}

print(maxNumber)
