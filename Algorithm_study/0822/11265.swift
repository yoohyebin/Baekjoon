//148ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (input[0], input[1])
var graph = [[Int]]()

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            if graph[i][j] > graph[i][k] + graph[k][j]{
                graph[i][j] = graph[i][k] + graph[k][j]
            }
        }
    }
}

for _ in 0..<m {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
        
    if graph[data[0]-1][data[1]-1] <= data[2] {
        print("Enjoy other party")
    }
    else{
        print("Stay here")
    }
}
