//48ms
let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int(String($0))!}
var sum = 0, result = 0

for i in 0..<n-1 {
    sum += nums[i]
    result += (nums[i+1]*sum)
}
print(result)
