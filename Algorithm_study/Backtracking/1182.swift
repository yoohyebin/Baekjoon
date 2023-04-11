//32ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], s = input[1]
let number = readLine()!.split(separator: " ").map{Int(String($0))!}
var visited = Array(repeating: false, count: n+1)
var result = 0


func dfs(_ i: Int, _ sum: Int){
    if sum == s {
        result += 1
    }
    for j in i+1..<n {
        dfs(j, sum+number[j])
    }
}
for i in 0..<n{
    dfs(i,number[i])
}
print(result)

//12ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input[0], S = input[1]
let series = readLine()!.split(separator: " ").map{Int(String($0))!}

func findNumber(i: Int, sum: Int) -> Int {
    var count = 0
    if sum == S {
        count += 1
    }
    for index in i+1..<series.count {
        count += findNumber(i: index, sum: sum + series[index])
    }
    return count
}

var count = 0
for i in 0..<N {
    count += findNumber(i: i, sum: series[i])
}
print(count)
