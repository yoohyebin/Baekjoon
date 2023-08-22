import Foundation

func solution(_ picks:[Int], _ minerals:[String]) -> Int {
    let num_min = picks.reduce(0, +) * 5
    let a=[[1,1,1],[5,1,1],[25,5,1]]
    let m = ["diamond": 0, "iron": 1, "stone": 2]
    var result = Int.max
    
    func dfs(_ idx: Int, _ d: Int, _ ir: Int, _ s: Int, _ p: Int) {
        if idx >= minerals.count || (d==0 && ir==0 && s==0) {
            result = min(result, p)
            return
        }
        
        var dp = 0, ip = 0, sp = 0
        
        for i in idx..<min(idx+5, minerals.count) {
            dp += a[0][m[minerals[i]]!]
            ip += a[1][m[minerals[i]]!]
            sp += a[2][m[minerals[i]]!]
        }
        
        if d != 0 {
            dfs(idx+5, d-1, ir, s, p+dp)
        }
        
        if ir != 0 {
            dfs(idx+5, d, ir-1, s, p+ip)
        }
        
        if s != 0 {
            dfs(idx+5, d, ir, s-1, p+sp)
        }
    }
    
    dfs(0, picks[0], picks[1], picks[2], 0)
    return result
}
