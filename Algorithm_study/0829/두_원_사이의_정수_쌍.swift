import Foundation

func solution(_ r1:Int, _ r2:Int) -> Int64 {
    var result = 0.0
    
    for i in 1...r2 {
        let high_r1 = sqrt(Double(r2*r2 - i*i))
        let high_r2 = i>r1 ? 0 : sqrt(Double(r1*r1 - i*i))
        
        result += floor(high_r1) - ceil(high_r2) + 1
    }
    
    return Int64(result)*4
}
