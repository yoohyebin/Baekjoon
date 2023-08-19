let n = Int(readLine()!)!

for _ in 0..<n {
    let num = readLine()!.split(separator: ",").map{Int(String($0))!}
    print("\(num[0]+num[1])")
}
