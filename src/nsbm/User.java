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
class User {
    private int id,contactno;
    private String fname,lname,dob,gender,faculty,email,address,password,intake,course,degree;

    public User(int id,String fname,String lname,String dob,String gender,String faculty,int contactno,String email,String address,String password,String intake,String course,String degree)
    {      this.id=id;
           this.fname=fname;
           this.lname=lname;
           this.dob=dob;
           this.gender=gender;
           this.faculty=faculty;
           this.contactno=contactno;
           this.email=email;
           this.address=address;
           this.password=password;
           this.intake=intake;
           this.course=course;
           this.degree=degree;
    }
    public int getid()
    {return id;
    }
    public String getfname()
    {return fname;
    }
    public String getlname()
    {return lname;
    }
    public String getdate_of_birth()
    {return dob;
    }
    public String getgender()
    {return gender;
    }
    public String getfaculty()
    {return faculty;
    }
    public int getcontact()
    {return contactno;
    }
    public String getemail()
    {return email;
    }
    public String getaddress()
    {return address;
    }
    public String getpassword()
    {return password;
    }
    public String getintake()
    {return intake;
    }
    public String getcourse()
    {return course;
    }
    public String getdegree()
    {return degree;
    }
    
    
    
    
    
    
}
