// 后序遍历有递归算法和非递归算法两种。在二叉树中，先左后右再根，即首先遍历左子树，然后遍历右子树，最后访问根结点

// 给定一个二叉树的根节点 root ，返回 它的 后 遍历 。
//  1
//   \
//    2  -> [3，2，1]
//   /
//  3

void main() {
  TreeNode node1 = TreeNode(1, r:TreeNode(2, l:TreeNode(3)));
  print(inorderTraversal(node1));

}


List<int> inorderTraversal(TreeNode root){

  List<int> result = [];
  //
  inorderRoot(TreeNode? tree){

    if(tree != null){

      if(tree.left != null){
        inorderRoot(tree.left);
      }
      if(tree.right != null){
        inorderRoot(tree.right);
      }
      result.add(tree.data);
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