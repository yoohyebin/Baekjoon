//20ms
let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp1 = Array(repeating: 1, count: 1001)
var dp2 = Array(repeating: 1, count: 1001)
var result = [Int]()

for i in 1...n {
    for j in 1...i {
        if arr[i-1] > arr[j-1] {
            dp1[i] = max(dp1[i], dp1[j]+1)
        }
    }
}

for i in (1...n).reversed() {
    for j in (i...n).reversed() {
        if arr[i-1] > arr[j-1] {
            dp2[i] = max(dp2[i], dp2[j]+1)
        }
    }
}

for i in 1...n{
    result.append(dp1[i]+dp2[i])
}

print((result.max() ?? 1)-1)

//12ms
let n = Int(readLine()!)!
var a = readLine()!.split{$0==" "}.map{Int($0)!}, b=a, c=b
func f(_ t:inout [Int]){
    for i in 0..<n {
        t[i]=1;
        for j in 0..<i{
            if a[i]>a[j]{
                t[i]=max(t[i],t[j]+1)
            }
        }
    }
}
f(&b)
a.reverse()
f(&c)
for i in 0..<n{
    b[i]+=c[n-i-1]-1
}
print(b.max()!)
