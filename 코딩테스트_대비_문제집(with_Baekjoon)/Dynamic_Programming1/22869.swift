let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let arr = [0]+readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = [0]+Array(repeating: 0, count: input[0])
var result = false
dp[1] = 1


for i in 1..<input[0] {
    if dp[i] == 1 {
        for j in i+1...input[0] {
            let power = (j-i)*(1+abs(arr[i]-arr[j]))
            if power <= input[1] {
                dp[j] = 1
            }
        }
        if dp[input[0]] == 1 {
            result = true
            break
        }
    }
}
print(result ? "YES" : "NO")
