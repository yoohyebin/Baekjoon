let t = Int(readLine()!)!

for _ in 0..<t {
    let xy = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (x1, y1, x2, y2) = (xy[0], xy[1], xy[2], xy[3])
    let n = Int(readLine()!)!
    var cnt = 0
    
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{Int(String($0))!}
        let (cx, cy, r) = (input[0], input[1], input[2])
        
        let dis1 = (x1-cx)*(x1-cx) + (y1-cy)*(y1-cy)
        let dis2 = (x2-cx)*(x2-cx) + (y2-cy)*(y2-cy)
        let cr = r*r
        
        if cr > dis1 && cr > dis2 {continue}
        else if cr > dis1 || cr > dis2 {cnt += 1}
    }
    
    print(cnt)
}
