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
public class instructor_user {
    
     private String instructor_id,instructor_name;

    public instructor_user(String instructor_id,String instructor_name)
    {      this.instructor_id=instructor_id;
           this.instructor_name=instructor_name;
          
    }
    public String getinstructor_id()
    {return instructor_id;
    }
    public String getinstructor_name()
    {return instructor_name;
    }
    
}
