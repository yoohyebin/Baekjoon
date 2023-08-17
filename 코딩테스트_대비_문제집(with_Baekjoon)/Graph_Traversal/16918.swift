let t = readLine()!.split(separator: " ").map{Int(String($0))!}
let (R,C,n) = (t[0],t[1],t[2])
var graph = [[String]]()
var boomList = [(Int,Int)]()


for i in 0..<R {
    let t = Array(readLine()!).map{String($0)}
    for j in 0..<C {
        if t[j] == "O" {
            boomList.append((i,j))
        }
    }
    graph.append(t)
}

func getAnswer(arr: [[String]]) {
    print(arr.flatMap{$0+["\n"]}.joined())
}

var graph1 = graph
var graph2 = Array(repeating: Array(repeating: "O", count: C), count: R)
var boomList2 = [(Int,Int)]()

for i in 0..<R {
    for j in 0..<C {
        if graph1[i][j] == "." {
            boomList2.append((i,j))
            graph1[i][j] = "O"
        }
    }
}

for (x,y) in boomList {
    for (a,b) in [(x,y),(x+1,y),(x-1,y),(x,y+1),(x,y-1)] where (0..<R).contains(a) && (0..<C).contains(b) {
        graph1[a][b] = "."
    }
}

let graph3 = graph1
var temp = [(Int,Int)]()

for (x,y) in boomList2 {
    if graph1[x][y] == "O" {
        temp.append((x,y))
    }
}
boomList2 = temp


graph1 = graph2

for (x,y) in boomList2 {
    for (a,b) in [(x,y),(x+1,y),(x-1,y),(x,y+1),(x,y-1)] where (0..<R).contains(a) && (0..<C).contains(b) {
        graph1[a][b] = "."
    }
}

if n == 1 {
    getAnswer(arr: graph)
} else if n % 2 == 0 {
    getAnswer(arr: graph2)
} else if n % 4 == 1 {
    getAnswer(arr: graph1)
} else if n % 4 == 3 {
    getAnswer(arr: graph3)
}
