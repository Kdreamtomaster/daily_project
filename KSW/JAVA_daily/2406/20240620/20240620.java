import java.util.HashSet;
import java.util.Arrays;
import java.util.Set;
import java.util.stream.Collectors;

class Solution {
    public int solution(int[] nums) {
        int answer = 0;
        int nums_len = nums.length / 2;
        
        Integer[] numsArray = Arrays.stream(nums).boxed().toArray(Integer[]::new);
        
        Set<Integer>nums_set = new HashSet<Integer>(Arrays.asList(numsArray));
        
        int nums_set_size = nums_set.size();
        if (nums_len >= nums_set_size){
            answer = nums_set_size;
        }
        else {
            answer = nums_len;
        }
        return answer;
    }
}

// 진짜 자료형 하나 바꾸는데도 공부할 거리가 많다. int 배열과 Integer 배열.
// Wrapper 자료형에 대해서도 찾아보게 되었다. 