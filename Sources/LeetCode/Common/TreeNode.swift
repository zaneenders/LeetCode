final class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
