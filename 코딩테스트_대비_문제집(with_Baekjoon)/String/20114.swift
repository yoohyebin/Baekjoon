//12ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, h, w) = (input[0], input[1], input[2])
var arr = [[String]]()
var result = ""

for _ in 0..<h {
    arr.append(readLine()!.map{String($0)})
}

func solve(_ x: Int) {
    for i in (x*w)..<(x+1)*w {
        for j in 0..<h {
            if arr[j][i] != "?" {
                result += arr[j][i]
                return
            }
        }
    }
    result += "?"
    return
}

for i in 0..<n {
    solve(i)
}

print(result)
