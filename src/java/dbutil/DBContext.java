
package dbutil;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class DBContext {
    public static CrimeDAO getContext() {
        
        ApplicationContext ac = new ClassPathXmlApplicationContext("dbutil/springconfig.xml");
        CrimeDAO kkcas = (CrimeDAO)ac.getBean("h5");
        return kkcas;
    }
}
