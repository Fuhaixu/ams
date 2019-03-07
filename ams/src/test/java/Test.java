import com.software.util.DateUtil;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test {
    @org.junit.Test
    public void test(){
        Date sd=new Date();
        Calendar calendar=Calendar.getInstance();
        calendar.setTime(sd);
        calendar.add(Calendar.DATE,+365);
        Date ed=calendar.getTime();
        SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(df.format(ed));
    }
}
