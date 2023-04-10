//16ms
import Foundation

func solution(_ powN: Int, _ new_r: Int, _ new_c: Int) {
    if new_r == r && new_c == c {
        print(result)
        return
    }
    
    if !(new_r <= r && r < new_r + powN && new_c <= c && c < new_c + powN) {
        result += powN*powN
        return
    }
    
    solution(powN/2, new_r, new_c)
    solution(powN/2, new_r, new_c+powN/2)
    solution(powN/2, new_r+powN/2, new_c)
    solution(powN/2, new_r+powN/2, new_c+powN/2)
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input[0], r = input[1], c = input[2]
var result = 0

solution(Int(pow(2.0, Double(N))), 0, 0)


//8ms
let line = readLine()!.split(separator: " ").map({ Int(String($0))! })
let (n, r, c) = (line[0], line[1], line[2])

func recursion(_ r: Int, _ c: Int, _ size: Int) -> Int {
    if size == 1 { return (r == 0 ? 0 : 2) + (c == 0 ? 0 : 1) }
    
    let pos = (r+1 > size ? 2 : 0) + (c+1 > size ? 1 : 0)
    let r = pos < 2 ? r : r-size
    let c = pos % 2 == 0 ? c : c-size
    
    return pos * (size * size) + recursion(r, c, size/2)
}

print(recursion(r, c, 1<<(n-1)))
