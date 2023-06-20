//24ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], s = input[1]
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0

func combination(_ idx: Int, _ sum: Int) {
    if idx >= n {return}
    
    if sum + arr[idx] == s {
        result += 1
        return
    }
    combination(idx+1, sum)
    combination(idx+1, sum+arr[idx])
}

combination(0, 0)
print(result)
