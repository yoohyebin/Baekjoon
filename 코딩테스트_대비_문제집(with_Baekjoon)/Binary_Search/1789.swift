//12ms
let s = Int(readLine()!)!
var result = 0, i = 1, sum = 0

while(true){
    sum += i
    result += 1
    i += 1
    
    if sum == s {
        break
    }
    
    else if sum > s {
        result -= 1
        break
    }
}
print(result)

//8ms
var s = Int(readLine()!)!, n = 1
while n*(n+1)/2<=s { n+=1 }
print(n-1)
