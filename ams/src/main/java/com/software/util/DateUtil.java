package com.software.util;


import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
    public static String timeToStr(Timestamp t){
        int month=t.getMonth()+1;
        int day=t.getDate();
        int y=t.getYear()+1900;
        String m=month>=10?month+"":"0"+month;
        String d=""+(day>=10?day+"":"0"+day);
        return y+"-"+m+"-"+d;

    }
    public static Timestamp strToTimeStamp(String strDate){
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-mm-dd");
        java.util.Date date = null;
         try {
              date = sf.parse(strDate);
            } catch (Exception e) {
                    e.printStackTrace();
          }
          java.sql.Timestamp dateSQL = new java.sql.Timestamp(date.getTime());
         return dateSQL;

    }

    public static java.sql.Timestamp dateToTime(java.util.Date date){
        String strDate = dateToStr(date, "yyyy-MM-dd HH:mm:ss SSS");
        return strToSqlDate(strDate,"yyyy-MM-dd HH:mm:ss SSS");
    }

    public static String dateToStr(java.sql.Timestamp time, String strFormat) {
        DateFormat df = new SimpleDateFormat(strFormat);
        String str = df.format(time);
        return str;
    }

    public static String dateToStr(java.util.Date date, String strFormat) {
        SimpleDateFormat sf = new SimpleDateFormat(strFormat);
        String str = sf.format(date);
        return str;
    }

    public static java.sql.Timestamp strToSqlDate(String str,String dateFormat){
        SimpleDateFormat sf=new SimpleDateFormat(dateFormat);
        java.util.Date date=null;
        try{
            date=sf.parse(str);
        }catch (Exception e){
            e.printStackTrace();
        }
        java.sql.Timestamp dateSql=new java.sql.Timestamp(date.getTime());
        return dateSql;
    }

    public static Date afterDate(Date sd,int interval){
        Calendar calendar=Calendar.getInstance();
        calendar.setTime(sd);
        calendar.add(Calendar.DATE,interval);
        Date ed=calendar.getTime();
        return ed;
    }
}
