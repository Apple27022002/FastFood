package service;

import model.Category;
import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductImpl implements ProductService {
    CategoryService categoryService = new CategoryImpl();
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/aka?useSSL=false", "root", "1234");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    @Override
    public void add(Product product) {
        try (Connection connection =getConnection();
             PreparedStatement preparedStatement =connection.prepareStatement("insert into product(id,name,price,categoryId) value (?,?,?,?)");){
            preparedStatement.setInt(1,product.getId());
            preparedStatement.setString(2,product.getName());
            preparedStatement.setInt(3,product.getPrice());
            preparedStatement.setInt(4,product.getCategory().getId());
            preparedStatement.executeUpdate();

        }catch (SQLException e){
            System.out.println(e);
        }

    }

    @Override
    public Product findById(int id) {
        Product products =new Product();
        try (Connection connection =getConnection();
        PreparedStatement preparedStatement =connection.prepareStatement("select * from product where id like ?");){
        preparedStatement.setInt(1,id);
        System.out.println(preparedStatement);
             ResultSet rs =preparedStatement.executeQuery();
             while (rs.next()){
                 String name =rs.getString("name");
                 int price =rs.getInt("price");
                 int categoryId =rs.getInt("id");
                 Category category =categoryService.findById(categoryId);
                 products =new Product(id,name,price,category);
             }
        }catch (SQLException e){

        }

        return products;
    }


    @Override
    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("select * from product");) {
            System.out.println(preparedStatement); //in ra câu truy vấn.
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int price = rs.getInt("price");
                int categoryId =rs.getInt("id");
                Category category =categoryService.findById(categoryId);
                products.add(new Product(id,name,price,category));
            }
        }catch (SQLException e){

        }return products;
    }
    @Override
    public boolean delete(int id) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("delete from product where id = ?");) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement); //in ra câu truy vấn.
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
        }
        return false;

    }

    @Override
    public boolean update(Product product) throws SQLException {
        return false;
    }

    @Override
    public List<Product> findByName(String name) {
        return null;
    }
}
