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
public class User_admin {
   private String adminid,adminname;
   public User_admin(String adminid,String adminname)
    {      this.adminid=adminid;
           this.adminname=adminname;
           
           
    }
    public String getadminid()
    {return adminid;
    }
    public String getadminname()
    {return adminname;
    }
   
}
