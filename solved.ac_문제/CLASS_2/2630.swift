//16ms
let n = Int(readLine()!)!
var arr = [[Int]]()
var w_cnt = 0, b_cnt = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func div(_ x: Int, _ y: Int, _ N: Int) {
    var cnt = 0
    
    for i in x..<x+N {
        for j in y..<y+N {
            if arr[i][j] == 1 {
                cnt += 1
            }
        }
    }
    
    if cnt == 0 {
        w_cnt += 1
    } else if cnt == N*N {
        b_cnt += 1
    } else {
        div(x, y, N/2)
        div(x + N/2, y, N/2)
        div(x, y + N/2, N/2)
        div(x + N/2, y + N/2, N/2)
    }
    return
}

div(0, 0, n)
print("\(w_cnt)\n\(b_cnt)")
