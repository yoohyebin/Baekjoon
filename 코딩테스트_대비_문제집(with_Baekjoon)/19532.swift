//24ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let a = input[0], b = input[1], c = input[2], d = input[3], e = input[4], f = input[5]

for i in -999..<1000 {
    for j in -999..<1000 {
        if (a*i) + (b*j) == c && (d*i) + (e*j) == f {
            print(i,j)
            break
        }
    }
}
