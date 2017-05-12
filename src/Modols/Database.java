/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modols;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author galal
 */
public class Database {

    private Connection connection;
    private PreparedStatement prepared_statement;
    private Statement y;
    private ResultSet result;

    public Database() {
        try {
            String classForName = "com.mysql.jdbc.Driver";
            String driverManager = "jdbc:mysql://localhost:3306/web_shop_jsp?user=root";
            String driverManager2 = "C://web_shop_jsp.sql";
            //Connect to DB
            Class.forName(classForName);//org.apache.derby.jdbc.ClientDriver"
            connection = DriverManager.getConnection(driverManager);
            //   JOptionPane.showMessageDialog(null, "true connection");

        } catch (ClassNotFoundException ex) {
            // System.out.println("ClassNotFoundException");
            JOptionPane.showMessageDialog(null, "ClassNotFoundException");

        } catch (SQLException ex) {
            // System.out.println("SQLException:Connection Failuer");
            JOptionPane.showMessageDialog(null, "SQLException:Connection Failuer");

        }

    }

    public Person LoginFunction(String mail, String Pass) {
        Person p = new Person();

        try {

            String sql = "select * from user where user_email=? and user_password=? ";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setString(1, mail);
            prepared_statement.setString(2, Pass);
            result = prepared_statement.executeQuery();

            while (result.next()) {
                p.setEmail(result.getString("user_email"));
                p.setName(result.getString("Name"));
                p.setPassword(result.getString("user_password"));
                p.setDate(result.getString("date"));
                p.setTell(result.getInt("Tel"));
                p.setUserType(result.getInt("UserType"));
                p.setId(result.getInt("id"));

            }

        } catch (SQLException ex) {
            // System.out.println(ex.getMessage());
            // System.out.println("SQLException:Can't Login");
            JOptionPane.showMessageDialog(null, "Login error");

        }
        return p;

    }

    
     public Person ForgetPasswordByID(int id,String mail) {
        Person p = new Person();

        try {

            String sql = "select * from user where id=? and user_email=?";
            
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setInt(1, id);
                        prepared_statement.setString(2, mail);

            result = prepared_statement.executeQuery();

            while (result.next()) {
                p.setEmail(result.getString("user_email"));
                p.setName(result.getString("Name"));
                p.setPassword(result.getString("user_password"));
                p.setDate(result.getString("date"));
                p.setTell(result.getInt("Tel"));
                p.setUserType(result.getInt("UserType"));
                p.setId(result.getInt("id"));

            }

        } catch (SQLException ex) {
            // System.out.println(ex.getMessage());
            // System.out.println("SQLException:Can't Login");
            JOptionPane.showMessageDialog(null, "Login error");

        }
        return p;

    }

    public int RegisterUser(String UserEmail, String Name, int Tell, String Pass, int UserType) {
        int rowAffected = 0;

        try {

            String sql = "INSERT INTO `user`( `Name`,`Tel`,`user_email`,`user_password`,`UserType`) VALUES (?, ?,?,?,?)";

            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setString(1, Name);
            prepared_statement.setInt(2, Tell);
            prepared_statement.setString(3, UserEmail);
            prepared_statement.setString(4, Pass);
            prepared_statement.setInt(5, UserType);

            rowAffected = prepared_statement.executeUpdate();

        } catch (SQLException ex) {
            // Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("SQLException:Can't Regestration");
            //            JOptionPane.showMessageDialog(null,ex);

        }
        return rowAffected;
    }

    public ArrayList<Person> DisplayAllUserByUserType(int UserType) {
        ArrayList<Person> arr = new ArrayList<Person>();

        try {

            String sql = "select * from user where UserType=?";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setInt(1, UserType);
            result = prepared_statement.executeQuery();
            while (result.next()) {
                Person p = new Person();

                p.setEmail(result.getString("user_email"));
                p.setPassword(result.getString("user_password"));
                p.setDate(result.getString("date"));
                p.setName(result.getString("Name"));
                p.setTell(result.getInt("Tel"));
                p.setUserType(result.getInt("UserType"));
                p.setId(result.getInt("id"));
                arr.add(p);
            }

        } catch (SQLException ex) {
            // Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("SQLException:Can't Display This Users ");

        }
        return arr;
    }

    public int DeleteUser(String UserEmail) {
        int rowAffected = 0;
        try {
            String sql = "Delete from user where user_email=?";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setString(1, UserEmail);
            rowAffected = prepared_statement.executeUpdate();
        } catch (SQLException ex) {
            //  Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            // System.out.println("SQLException:Can't Deleting");
            JOptionPane.showMessageDialog(null, "SQLException:Can't Deleting");

        }
        return rowAffected;

    }

    public ResultSet DisplayAllProduct() {

        try {
            String sql = "select * from product ";
            prepared_statement = connection.prepareStatement(sql);

            result = prepared_statement.executeQuery();

        } catch (SQLException ex) {
            //System.out.println("SQLException:Can't Display Company Products ");
            JOptionPane.showMessageDialog(null, "SQLException:Can't Display Company Products");
        }
        return result;

    }

    public ResultSet DisplayAllCompaniesProduct(String c_mail) {

        try {
            String sql = "select * from product  where c_mail=? ";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setString(1, c_mail);
            result = prepared_statement.executeQuery();

        } catch (SQLException ex) {
            //System.out.println("SQLException:Can't Display Company Products ");
            JOptionPane.showMessageDialog(null, "SQLException:Can't Display Company Products");
        }
        return result;

    }
    //Hussieeeeeeeeeeeeeeen

    public int companyAddProduct(String c_name, String c_mail, int product_code, String name, double price, String description) {
        int rowAffected = 0;

        try {

            String sql = "INSERT INTO `product`(`name`, `c_mail`, `c_name`, `product_code`, `price`, `Description`) VALUES (?,?,?,?,?,?)";

            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setString(1, name);
            prepared_statement.setString(2, c_mail);
            prepared_statement.setString(3, c_name);
            prepared_statement.setInt(4, product_code);
            prepared_statement.setDouble(5, price);
            prepared_statement.setString(6, description);

            rowAffected = prepared_statement.executeUpdate();

        } catch (SQLException ex) {
            // Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            //  System.out.println("SQLException:Can't Regestration");

        }
        return rowAffected;
    }

    /////////////////////////////////////// taha
    public ResultSet DisplayAllCustomerProduct(String customer_mail) {
//`product_code`, `product_image`, `customer_email`, `product_name`, 
        //`company_name`, `company_email`, `price`, `date`, `RecievingDate`, `id`, `Description`
        try {
            String sql = "select * from customer_product  where customer_email=? ";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setString(1, customer_mail);
            result = prepared_statement.executeQuery();

        } catch (SQLException ex) {
            //System.out.println("SQLException:Can't Display customer Products ");
            JOptionPane.showMessageDialog(null, ex);

        }
        return result;

    }

    /////////////////////////////////////// end taha
    public Product DisplaySpecialProduct(int id) {
        //`name`, `c_mail`, `c_name`, `product_code`, `price`, `product_image`, `id`, `date`, `Description`
        Product product = new Product();

        try {
            String sql = "select * from product where id=?";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setInt(1, id);
            result = prepared_statement.executeQuery();
            while (result.next()) {
                product.setProductName(result.getString("name"));
                product.setProductCode(result.getInt("product_code"));
                product.setId(result.getInt("id"));
                product.setCompanyEmail(result.getString("c_mail"));
                product.setCompanyName(result.getString("c_name"));
                product.setPrice(result.getDouble("price"));
                product.setDate(result.getString("date"));
                product.setDescription(result.getString("Description"));

            }
        } catch (SQLException ex) {
            //System.out.println("SQLException:Can't Display Special Product");
            JOptionPane.showMessageDialog(null, "SQLException:Can't Display Special Product");
        }
        return product;
    }

    ////////////////////////////////// taha
    public Product DisplaySpecialCustomerProduct(int id) {
//  `product_code`, `product_image`, `customer_email`, `product_name`,
        //      `company_name`, `company_email`, `price`, `date`, `RecievingDate`, `id`
        Product product = new Product();

        try {
            String sql = "select * from  customer_product where id=?";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setInt(1, id);
            result = prepared_statement.executeQuery();
            while (result.next()) {
                product.setProductName(result.getString("product_name"));
                product.setProductCode(result.getInt("product_code"));
                product.setCompanyEmail(result.getString("company_email"));
                product.setCompanyName(result.getString("company_name"));
                product.setPrice(result.getDouble("price"));
                product.setDate(result.getString("date"));
                product.setReceiveDate(result.getString("RecievingDate"));
                product.setDescription(result.getString("Description"));
                product.setId(result.getInt("id"));

            }
        } catch (SQLException ex) {
            //System.out.println("SQLException:Can't Display Special Product");
            JOptionPane.showMessageDialog(null, "SQLException:Can't Display Special  Customer Product");
        }
        return product;
    }

    //////////////////////////////// end taha
    public int deleteProduct(int id) {

        int rowAffected = 0;
        try {
            String sql = "Delete from product where id=?";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setInt(1, id);
            rowAffected = prepared_statement.executeUpdate();
        } catch (SQLException ex) {
            //  Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            // System.out.println("SQLException:Can't Deleting");
            JOptionPane.showMessageDialog(null, "SQLException:Can't Deleting product");

        }
        return rowAffected;

    }

    ///////////////////////////////// taha
    public int deleteCustomerProduct(int id) {

        int rowAffected = 0;
        try {
            String sql = "Delete from customer_product where id=?";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setInt(1, id);
            rowAffected = prepared_statement.executeUpdate();
        } catch (SQLException ex) {
            //  Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            // System.out.println("SQLException:Can't Deleting");
            JOptionPane.showMessageDialog(null, "SQLException:Can't Deleting Customer product");

        }
        return rowAffected;

    }
    /////////////////////////////////end taha

    public int UpdateProduct(String name, String description, int product_code, double price, int id) {
        int rowAffected = 0;
        try {
            String sql = "UPDATE `product` SET `name`=?,`product_code`=?,`price`=?,`Description`=? WHERE id=?";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setString(1, name);
            prepared_statement.setInt(2, product_code);
            prepared_statement.setDouble(3, price);
            prepared_statement.setString(4, description);
            prepared_statement.setInt(5, id);

            rowAffected = prepared_statement.executeUpdate();
        } catch (SQLException ex) {
            //  Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            // System.out.println("SQLException:Can't Deleting");
            JOptionPane.showMessageDialog(null, "SQLException:Can't Updating product");

        }
        return rowAffected;

    }

    //`product_code`, `product_image`, `customer_email`, `product_name`,
    //`company_name`, `company_email`, `price`, `date`, `RecievingDate`, `id`
    public int BuyProduct(int product_code, String customer_email, String product_name,
            String company_name, String company_email, String date, double price, String Description) {
        int rowAffected = 0;
        try {
            String sql = "INSERT INTO"
                    + " `customer_product`(`product_code`, `customer_email`, `product_name`,"
                    + " `company_name`, `company_email`, `price`, `date`,`Description`)"
                    + " VALUES(?,?,?,?,?,?,?,?)";
            prepared_statement = connection.prepareStatement(sql);
            prepared_statement.setInt(1, product_code);
            prepared_statement.setString(2, customer_email);
            prepared_statement.setString(3, product_name);
            prepared_statement.setString(4, company_name);
            prepared_statement.setString(5, company_email);
            prepared_statement.setDouble(6, price);
            prepared_statement.setString(7, date);
            prepared_statement.setString(8, Description);

            rowAffected = prepared_statement.executeUpdate();

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex);

        }
        return rowAffected;

    }

    public void closeDB() {

        try {
            connection.close();
            prepared_statement.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex);
        }

    }

}
