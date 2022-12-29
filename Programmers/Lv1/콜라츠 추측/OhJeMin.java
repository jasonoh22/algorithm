class Solution {
    public int solution(int num) {
        long n = num;
        int cnt = 0;
        while( n != 1){
            if(n % 2 == 0){
               n /= 2; 
            }            
            else{
                 n = (n * 3) +1;
            }
            cnt++;
            if(cnt > 500){
                cnt = -1;
                break;
            }
        }
        if(cnt == 1) cnt = 0;
        return cnt;
    }
}
