package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import modal.Product;

public class ProductDao {
	
	private DataSource dataSource;
	
	public ProductDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public List<Product> getAll() {
		List<Product> all = new ArrayList<Product>();
		try {
			Connection con = this.dataSource.getConnection();
			
			PreparedStatement stmt = con.prepareStatement("SELECT * FROM products");
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescription(rs.getString("description"));
				p.setPrice(rs.getDouble("price"));
				p.setColor(rs.getString("color"));
				
				all.add(p);
			}
			
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return all;
	}

}
