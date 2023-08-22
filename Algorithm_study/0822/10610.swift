//32ms
let n = readLine()!.map{String($0)}

if !n.contains("0") {
    print("-1")
}  else {
    if n.map{Int(String($0))!}.reduce(0,+) % 3 != 0{
        print("-1")
    }else {
        print(n.sorted(by: >).joined())
    }
}
