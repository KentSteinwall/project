/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nsbm;

/**
 *
 * @author Dell
 */
public class User_subject {
    private String sid,subject;
    public User_subject(String sid,String subject)
    {      
           this.sid=sid;
           this.subject=subject;
           
    }
    
    public String getsid()
    {return sid;
    }
    public String getsubject()
    {return subject;
    }
}
