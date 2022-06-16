/*
首先我们需要了解什么是二叉树的中序遍历：
按照访问左子树——根节点——右子树的方式遍历这棵树，而在访问左子树或者右子树的时候,我们按照同样的
方式遍历，直到遍历完整棵树。因此整个遍历过程天然具有递归的性质，我们可以直接用递归函数来模拟这一过程。
* */

// 给定一个二叉树的根节点 root ，返回 它的 中序 遍历 。
//  1
// /
// 2     -> [2,3,1]
//  \
//   3


void main() {
  TreeNode node1 = TreeNode(1, l:TreeNode(4), r:TreeNode(2, l:TreeNode(3)));
  TreeNode node2 = TreeNode(1, l:TreeNode(2), r:TreeNode(3));
  TreeNode node3 = TreeNode(1, r:TreeNode(2, l:TreeNode(3)));
  print(inorderTraversal(node1));
  print(inorderTraversal(node2));
  print(inorderTraversal(node3));
}


List<int> inorderTraversal(TreeNode root){

  List<int> result = [];
  //
  inorderRoot(TreeNode? tree){
    if(tree != null){
      if(tree.left != null){
        inorderRoot(tree.left);
      }
      result.add(tree.data);
      if(tree.right != null){
        inorderRoot(tree.right);
      }
    }
  }
  //
  inorderRoot(root);

  return result;
}

class TreeNode {
  late int data;
  TreeNode? left;
  TreeNode? right;

  TreeNode(int d, {TreeNode? l, TreeNode? r}) {
    data = d;
    left = l;
    right = r;
  }
}
