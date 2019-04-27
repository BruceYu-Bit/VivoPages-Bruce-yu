package user;
public class computer{
    double var1;
    String var2;
    double var3;
    double result;

    public double getVar1() {
        return var1;
    }

    public void setVar1(double var1) {
        this.var1 = var1;
    }

    public String getVar2() {
        return var2;
    }

    public void setVar2(String var2) {
        this.var2 = var2;
    }

    public double getVar3() {
        return var3;
    }

    public void setVar3(double var3) {
        this.var3 = var3;
    }
    public void compute(){
        if(var2==null){
            var2="+";
        }
        else{
            if(var2.equals("+")){
                result=var1+var3;
            }
            else if(var2.equals("-")){
                result=var1-var3;
            }
            else if(var2.equals("*")){
                result=var1*var3;
            }
            else if(var2.equals("/")){
                result=var1/var3;
            }
        }
    }
    public double getResult() {
        return result;
    }
    
}