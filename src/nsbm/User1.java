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
public class User1 {
    private int id;
    private String amount,date;

    public User1(int id,String amount,String date)
    {      this.id=id;
           this.amount=amount;
           this.date=date;
           
    }
    public int getid()
    {return id;
    }
    public String getamount()
    {return amount;
    }
    public String getdate()
    {return date;
    }
   
    
}
