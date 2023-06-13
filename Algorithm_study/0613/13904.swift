let n = Int(readLine()!)!
var arr = [[Int]](), score = Array(repeating: 0, count: 1001)

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

arr.sort{$0[1] > $1[1]}

for i in 0..<n {
    let index = arr[i][0]
    for j in (1...index).reversed() {
        if score[j] == 0 {
            score[j] = arr[i][1]
            break
        }
    }
}

print(score.reduce(0, +))
