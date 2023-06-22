//8ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var target = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = [Int](1...nm[0])
var result = 0

while !target.isEmpty {
    if arr.first! == target.first! {
        arr.removeFirst()
        target.removeFirst()
    }else {
        let start = arr.firstIndex(of: target.first!)!
        let end = arr.count - arr.firstIndex(of: target.first!)!
        
        if start < end {
            arr.append(arr.removeFirst())
        }else {
            arr.insert(arr.removeLast(), at: 0)
        }
        result += 1
    }
}

print(result)
