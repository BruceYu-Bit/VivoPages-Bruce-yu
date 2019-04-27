package user;
public class Usercheck{
    String username=null;
    String usercode=null;
    
    public String getUsername() {
        try{
            byte[]b=username.getBytes("ISO-8859-1");
            username=new String(b);
            return username;
        }
        catch(Exception e){
        return username;}
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode;
    }    
    public int judge(){
        if(username!=null){
            if((username.equals("admin")&&usercode.equals("123"))){
                return 1;
            }
            else 
                return 0;
        }
        return 0;
    }
}