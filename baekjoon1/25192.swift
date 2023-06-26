//80ms
let n = Int(readLine()!)!
var result = 0
var set = Set<String>()

for _ in 0..<n {
    let input = readLine()!
    if input == "ENTER" {
        result += set.count
        set.removeAll()
    }else{
        set.insert(input)
    }
}
print(result+set.count)
