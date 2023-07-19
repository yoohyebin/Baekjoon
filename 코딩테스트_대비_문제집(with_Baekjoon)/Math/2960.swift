let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, k) = (input[0], input[1])
var cnt = 0
var arr = Array(repeating: true, count: n+1)

for i in 2...n {
    for  j in stride(from: i, through: n, by: i) {
        if arr[j] {
            arr[j] = false
            cnt += 1
            
            if cnt == k {
                print(j)
                break
            }
        }
    }
}
