let mod = 1234567891
let l = Int(readLine()!)!
let sValue = Array(readLine()!).map{Int(exactly: $0.asciiValue!)! - 96}
var result = 0, m = 1

for s in sValue {
    result = (result + s*m) % mod
    m = (m*31)%mod
}

print(result)
