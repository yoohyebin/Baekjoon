//104ms
let t = Int(readLine()!)!

for _ in 0..<t {
    let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
    let n = nm[0], m = nm[1]
    let arrA = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
    let arrB = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
    var result = 0
    
    for i in 0..<n {
        var left = 0, right = m
        while left+1 < right {
            var mid = (left+right)/2
            if arrA[i] > arrB[mid] {
                left = mid
            }else{
                right = mid
            }
        }
        result += left
        if arrA[i] > arrB[left]{
            result += 1
        }
    }
    print(result)
}

//88ms
let testCnt = Int(readLine()!)!
for _ in 0..<testCnt {
    let _ = readLine()!.split(separator: " ").compactMap{Int($0)}
    var A = readLine()!.split(separator: " ").compactMap{Int($0)}

    let B = readLine()!.split(separator: " ").compactMap{Int($0)}
    let sortedB = B.sorted(by: <)
   
    var cnt = 0
    for ele in A {
        var left = 0
        var right = B.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if ele > sortedB[mid] {
               left = mid+1
            } else {
                right = mid-1
            }
            
        }
        cnt += left
    }
    print(cnt)
}
