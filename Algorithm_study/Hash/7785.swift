//236ms
let n = Int(readLine()!)!
var dict = [String: String]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    if input[1] == "enter" {
        dict[input[0]] = "enter"
    }else {
        dict[input[0]] = nil
    }
}

for i in dict.keys.sorted(by: >) {
    print(i)
}

//180ms
let logsCount = Int(readLine()!)!
var peoples: [String: Bool] = [:]

for _ in 0..<logsCount {
  let log = readLine()!
  if log.suffix(5) == "enter" {
    let name = String(log.dropLast(6))
    peoples[name] = true
  } else if log.suffix(5) == "leave" {
    let name = String(log.dropLast(6))
    peoples[name] = false
  }
}

peoples.filter({ $0.value == true }).sorted(by: { $0.key > $1.key }).forEach {
  print($0.key)
}
