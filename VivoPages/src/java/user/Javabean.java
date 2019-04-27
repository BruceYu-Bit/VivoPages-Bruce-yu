package user;
public class Javabean{
    String userchoice=null;
    String producer=null;

    public String getUserchoice() {
        try{
            byte[]b=userchoice.getBytes("ISO-8859-1");
            userchoice=new String(b);
            return userchoice;
        }
        catch(Exception e){
        return userchoice;}
    }

    public void setUserchoice(String userchoice) {
        this.userchoice = userchoice;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    } 

}