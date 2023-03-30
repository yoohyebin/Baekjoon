//252ms
let input = readLine()!.split(separator: " ")
let n = Int(input[0])!, m = Int(input[1])!
var dic:[String:Int] = [:]
var arr:[String] = Array(repeating: "", count: n+1)

for i in 1...n {
    let name = readLine()!
    dic[name] = i
    arr[i] = name
}

for _ in 1...m {
    let query = readLine()!
    
    if Int(query) != nil {
        print(arr[Int(query)!])
    } else {
        print(dic[query]!)
    }
}
