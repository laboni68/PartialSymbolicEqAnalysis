package benchmarks.CLEVER.odd.Neq;
public class newV {
    private int lib(int x) {
        int counter = 0;
        while (x % 2 == 0){
            x = x/2;
            counter++;
        }
        return counter+1;
    }
    int client(int x){
        if (lib(x)==0){
            return 1;
        }else{
            return 0;
        }
    }
}