/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Location;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author syamcode
 */
public class LocationDAO{

    public static Connection getConnection() {
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/trav_v1_5", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static List<Location> getAll() {
        List<Location> locations = new ArrayList<Location>();
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM location");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Location loc = new Location();
                loc.setLocationId(rs.getInt("LOCATION_ID"));
                loc.setLocationName(rs.getString("LOCATION_NAME"));
                loc.setAddress(rs.getString("ADDRESS"));
                loc.setDistrictId(rs.getInt("DISTRICT_ID"));
                locations.add(loc);
            }
//            while(rs2.next())
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return locations;
    }
    
    public static int save(Location _location) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO location(LOCATION_ID, LOCATION_NAME, ADDRESS, DISTRICT_ID) VALUES (?, ?, ?, ?)");
            ps.setInt(1, _location.getLocationId());
            ps.setString(2, _location.getLocationName());
            ps.setString(3, _location.getAddress());
            
            ps.setInt(1, _location.getDistrictId());
            
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Location _location) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM location WHERE LOCATION_ID=?");
            ps.setInt(1, _location.getLocationId());
            status = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(Location _location) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps=con.prepareStatement("update location set LOCATION_NAME=?, ADDRESS=?, DISTRICT_ID where LOCATION_ID=?");  
            
            ps.setString(1, _location.getLocationName());
            ps.setString(2, _location.getAddress());
            
            ps.setInt(3, _location.getDistrictId());
            
            ps.setInt(4, _location.getLocationId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static Location getLocationById(String id) throws SQLException {
        Location loc = null;
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM location WHERE LOCATION_ID=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                loc = new Location();
                loc.setLocationId(rs.getInt("LOCATION_ID"));
                loc.setLocationName(rs.getString("LOCATION_NAME"));
                loc.setAddress(rs.getString("ADDRESS"));
                
                loc.setDistrictId(rs.getInt("DISTRICT_ID"));
                
            }
        }
        catch(Exception e) {
            System.out.println(e);
        }
        return loc;
    }
}
