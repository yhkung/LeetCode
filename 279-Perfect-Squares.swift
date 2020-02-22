/// 279 - Perfect Squares
/// - Link: https://leetcode.com/problems/perfect-squares/
/// - Approach: BFS
class Solution {
    func numSquares(_ n: Int) -> Int {
        var visited: Set<Int> = Set()
        var queue: [Int] = []

        queue.append(0)

        var steps = 0
        while !queue.isEmpty {
            steps += 1

            for _ in 0..<queue.count {
                let cur = queue.removeFirst()
                for i in 1..<n {
                    let sum = cur + (i * i)
                    if sum == n {
                        return steps
                    } else if sum > n {
                        break
                    } else {
                        if !visited.contains(sum) {
                            queue.append(sum)
                            visited.insert(sum)
                        }
                    }
                }
            }
        }
        return steps
    }
}