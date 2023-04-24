//184ms
let n = Int(readLine()!)!
var arr = [[Int]](), now = -1, result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

arr.sort(){
    if $0[1] == $1[1] {
        return $0[0] < $1[0]
    }else {
        return $0[1] < $1[1]
    }
}

for i in arr {
    if i[0] >= now {
        now = i[1]
        result += 1
    }
}
print(result)
