//312ms
let n = Int(readLine()!)!
var graph = [Int: [Int]]()

for _ in 0..<n-1 {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    graph[input[0], default: [Int]()].append(input[1])
    graph[input[1], default: [Int]()].append(input[0])
}

let q = Int(readLine()!)!
for _ in 0..<q {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    if data[0] == 1 {
        if graph[data[1]]?.count == 1 {
            print("no")
        }else{
            print("yes")
        }
    }else {
        print("yes")
    }
}
