// https://leetcode.com/problems/binary-tree-inorder-traversal/description/?envType=problem-list-v2&envId=depth-first-search
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    if let root {
        return helper(root)
    } else {
        return []
    }

    func helper(_ root: TreeNode) -> [Int] {
        var out: [Int] = []
        if let left = root.left {
            out.append(contentsOf: helper(left))
        }
        out.append(root.val)
        if let right = root.right {
            out.append(contentsOf: helper(right))
        }
        return out
    }
}
