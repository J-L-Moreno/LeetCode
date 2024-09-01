class Solution {
  List<List<int>> findMatrix(List<int> nums) {
    List<List<int>> matrix = [];
    while(nums.isNotEmpty){
      List<int> temporaryRow = [];
      for(int i = 0; i < nums.length; i++){
        if(!temporaryRow.contains(nums[i])){
            temporaryRow.add(nums[i]);
            nums.removeAt(i);
            i--;
        }
      }
      matrix.add(temporaryRow);
    }
    return matrix;
  }
}