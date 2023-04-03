//184ms
struct Heap<T: Comparable> {
    var nodes: [T] = []
    private let sort: (T,T) -> Bool
    
    init(sort: @escaping (T,T) -> Bool) {
        self.sort = sort
    }
    
    var isEmpty: Bool {
        return nodes.isEmpty
    }
    
    mutating func insert(_ element: T) {
        var index = nodes.count
        nodes.append(element)
        
        while index > 0, sort(nodes[index], nodes[(index-1)/2]) {
            nodes.swapAt(index, (index-1)/2)
            index = (index-1)/2
        }
    }
    
    mutating func delete() -> T {
        if nodes.count == 1 {
            return nodes.removeLast()
        }
        
        let result = nodes.first!
        nodes.swapAt(0, nodes.count - 1)
        _ = nodes.popLast()
        
        var index = 0
        
        while index < nodes.count {
            let leftChild = index * 2 + 1
            let rightChild = leftChild + 1
            
            let child = [leftChild, rightChild]
                .filter{$0 < nodes.count && sort(nodes[$0], nodes[index])}
                .sorted{ sort(nodes[$0], nodes[$1])}
            
            if child.isEmpty {
                break
            } else {
                nodes.swapAt(index, child[0])
                index = child[0]
            }
        }
        return result
    }
}

var heap = Heap<Int>(sort: >)

for _ in 0..<Int(readLine()!)! {
    let x = Int(readLine()!)!
    
    if x == 0 {
        if heap.isEmpty {
            print(0)
        } else {
            print(heap.delete())
        }
    } else {
        heap.insert(x)
    }
}
