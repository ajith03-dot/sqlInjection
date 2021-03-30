# sqlInjection
A simple Student registration application for demonstrating sql injection and how to prevent it in asp.net C#.
In which i have created a vulnerable application and through sql injection technique i can hack the data saved in the database with a simple sql query and also i have built a defence system using sqlparameters to prevent sql injection attack.


# How to add sql dataconnection server :

Whatever you want to perform when you will click on Button, you will write inside this click event. In our case, we will do database connectivity here and will save all the values in database. For this, I created a database named "Database Connectivity" and a table inside it named "register" with the below script:

This script will create a table in database having Firstname,lastname,email.

In Code behind, first retrieve all the text box values:

Now, we will connect to database and will save these values in register table. For this, first add two below namespaces on page:

using System.Data;
using System.Data.SqlClient;

# These are the steps to Make Database connection

Step 1: Make a Connection
To make a connection with database, ADO.NET provides a class named SqlConnection. So, we will create an object of this class and will pass the connection string:

Copy CodeSqlConnection con = new SqlConnection
("Data Source=.;Initial Catalog = DatabaseConnectivity;Trusted_Connection=true;");

Step 2: Open Connection
Copy Codecon.Open();

Step 3: Prepare Command
To prepare a command, ADO.NET gives us a class named SqlCommand which we will use as below:

SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class

Step 4: Add Parameters If Any
Add Parameters if you have any to your command obeject as below
com.Parameters.Add("@Fname", SqlDbType.NVarChar).Value = firstname;
com.Parameters.Add("@Lname", SqlDbType.NVarChar).Value = lastname;
com.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;

Step 5: Execute Your Command
Execute your command as below:

Copy Codecom.ExecuteNonQuery();

# I have built this code with the Guidance of 
  Sharath Kumar
  Head,Solutions Engineering
  We45 Solutions pvt. Ltd, Bangalore,india
