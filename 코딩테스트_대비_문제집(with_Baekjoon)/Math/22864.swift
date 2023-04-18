//12ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let a = input[0], b = input[1], c = input[2], m = input[3]
var result = 0, tired = 0

for i in 0..<24{
    if tired+a <= m {
        tired += a
        result += b
    }else{
        tired = tired-c >= 0 ? tired-c : 0
    }
}

print(result)
