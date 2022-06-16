// 前序遍历首先访问根结点然后遍历左子树，最后遍历右子树。

// 给定一个二叉树的根节点 root ，返回 它的 前序 遍历 。
//  1
//   \
//    2  -> [1,2,3]
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
      result.add(tree.data);
      if(tree.left != null){
        inorderRoot(tree.left);
      }
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