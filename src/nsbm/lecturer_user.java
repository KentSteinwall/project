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
public class lecturer_user {
   
    private String lecturer_id,lecturer_name;

    public lecturer_user(String lecturer_id,String lecturer_name)
    {      this.lecturer_id=lecturer_id;
           this.lecturer_name=lecturer_name;
          
    }
    public String getlecturer_id()
    {return lecturer_id;
    }
    public String getlecturer_name()
    {return lecturer_name;
    }
}
