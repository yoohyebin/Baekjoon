//8ms
let numString = readLine()!
var maxValue = "", minValue = ""
var mCnt = 0

for s in numString {
    if s == "M" {mCnt += 1}
    else {
        if mCnt > 0 {
            maxValue += String("5" + String(repeating: "0", count: mCnt))
            minValue += String("1" + String(repeating: "0", count: mCnt-1) + "5")
        }else{
            maxValue += "5"
            minValue += "5"
        }
        mCnt = 0
    }
}

if mCnt > 0 {
    maxValue += String(repeating: "1", count: mCnt)
    minValue += String("1" + String(repeating: "0", count: mCnt-1))
}

print(maxValue)
print(minValue)
