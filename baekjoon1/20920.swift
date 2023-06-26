//656ms
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var dict = [String: Int]()

for _ in 0..<n {
    dict[readLine()!, default: 0] += 1
}

var results = dict.filter{$0.key.count >= m}.sorted(){
    $0.value == $1.value ? ($0.key.count == $1.key.count ? $0.key < $1.key: $0.key.count > $1.key.count) : $0.value > $1.value
}

for result in results {
    print(result.key)
}
