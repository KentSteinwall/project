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
public class User_marks {
    private String sub1_id,sub2_id,sub3_id,sub4_id;
   public User_marks(String sub1_id,String sub2_id,String sub3_id,String sub4_id)
    {      
           this.sub1_id=sub1_id;
           this.sub2_id=sub2_id;
           this.sub3_id=sub3_id;
           this.sub4_id=sub4_id;
           
           
    }
    public String getsub1id()
    {return sub1_id;
    }
   public String getsub2id()
    {return sub2_id;
    }
   public String getsub3id()
    {return sub3_id;
    }
   public String getsub4id()
    {return sub4_id;
    }
}
