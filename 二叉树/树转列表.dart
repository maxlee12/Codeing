// 给定树的根节点，将拥有任意数目子节点的树转为列表。其中，树中节点的兄弟节点也要位于列表中数据的相邻位置。
// 1
// / \
// 2   3  -> [1,2,3,4,5,6,7]
// /|\   \
// 4 5 6   7

void main() {
  TreeNode tree = TreeNode(1, c: [
    TreeNode(2, c: [TreeNode(4), TreeNode(5), TreeNode(6)]),
    TreeNode(3, c: [TreeNode(7)])
  ]);

  print(treeList(tree));
}

List<int> treeList(TreeNode tree) {
  List<int> result = [];
  result.add(tree.data);

  List<TreeNode> subTrees = [];
  for (TreeNode child in tree.children) {
    result.add(child.data);
    subTrees.addAll(child.children);
  }
  //
  if (subTrees.isNotEmpty) {
    for (TreeNode child in subTrees) {
      result.addAll(treeList(child));
    }
  }

  return result;
}

class TreeNode {
  late int data;
  List<TreeNode> children = [];

  TreeNode(int d, {List<TreeNode>? c}) {
    data = d;
    if (c != null) {
      children = c;
    }
  }
}
