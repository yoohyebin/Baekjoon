let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted(by: >)

print(arr[nk[1]-1])
