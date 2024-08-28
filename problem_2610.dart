class Solution {
  List<List<int>> findMatrix(List<int> nums) {
    List<List<int>> matrix = [];
    while(nums.isNotEmpty){
      List<int> row = [];
      for(int i = 0; i < nums.length; i++){
        if(row.isEmpty){
            row.add(nums[i]);
            nums.removeAt(i);
            i--;
        } else {
            if(!row.contains(nums[i])){
                row.add(nums[i]);
                nums.removeAt(i);
                i--;
            }
        }
      }
      matrix.add(row);
    }
    return matrix;
  }
}