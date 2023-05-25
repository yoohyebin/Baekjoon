//12ms
let t = Int(readLine()!)!
for _ in 0..<t {
    let _ = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map {Int(String($0))!}
    var sum = 0, result = nums[0]
    
    for num in nums {
        sum = max(num, sum + num)
        result = max(sum, result)
    }
    print(result)
}
