// https://leetcode.com/problems/binary-tree-level-order-traversal/?envType=problem-list-v2&envId=breadth-first-search
func levelOrder(_ rootl: TreeNode?) -> [[Int]] {
    var nodes: [Int: [Int]] = [:]
    if let rootl {
        getLevel(rootl, 0)
        var out: [[Int]] = []
        for key in nodes.keys.sorted() {
            out.append(nodes[key]!)
        }
        return out
    } else {
        return []
    }

    func getLevel(_ tree: TreeNode, _ level: Int) {
        if nodes[level] == nil {
            nodes[level] = [tree.val]
        } else {
            nodes[level]! += [tree.val]
        }
        if let left = tree.left {
            getLevel(left, level + 1)
        }
        if let right = tree.right {
            getLevel(right, level + 1)
        }
    }
}
