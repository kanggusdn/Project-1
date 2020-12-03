package dao;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.Goods;

public class GoodsDAO {
	private static GoodsDAO boardDAO;
	private Connection conn;
	private PreparedStatement pstmt;

	private GoodsDAO() {

	}

	public static GoodsDAO getInstance() {
		if (boardDAO == null) {
			boardDAO = new GoodsDAO();
		}
		return boardDAO;
	}

	public void setConnection(Connection conn) {
		this.conn = conn;
	}

	public ArrayList<Goods> selectDogList() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Goods> goodsList = null;

		try {
			pstmt = conn.prepareStatement("select * from dog");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				goodsList = new ArrayList<Goods>();
				// 객체를 생성하고

				do {
					goodsList.add(new Goods(rs.getInt("id"), rs.getString("kind"), rs.getInt("price"),
							rs.getString("image"), rs.getString("country"), rs.getInt("height"), rs.getInt("weight"),
							rs.getString("content"), rs.getInt("readcount")));
					// 객체가 있다면 do를 해라
				} while (rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			close(rs);
			close(pstmt);
		}
		return goodsList;
	}

	public int insertGoods(Goods goods) {
		PreparedStatement pstmt = null;
		int insertCount = 0;
		String sql = "";

		try {
			sql = "insert into dog values(null,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, goods.getKind());
			pstmt.setInt(2, goods.getPrice());
			pstmt.setString(3, goods.getImage());
			pstmt.setString(4, goods.getCountry());
			pstmt.setInt(5, goods.getHeight());
			pstmt.setInt(6, goods.getWeight());
			pstmt.setString(7, goods.getContent());
			pstmt.setInt(8, goods.getReadcount());
			insertCount = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return insertCount;
	}

	public int updateReadCount(int id) {
		PreparedStatement pstmt = null;
		int updateCount = 0;
		String sql = "";
		
		try {
			sql = "update dog set readcount = readcount + 1 where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			updateCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			close(pstmt);
		}
		return updateCount;
	}

	public Goods selectDog(int id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Goods goods = null;
		
		try {
			pstmt = conn.prepareStatement("select * from dog where id =?");
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				goods = new Goods(
				rs.getInt("id")
				,rs.getString("kind")
				,rs.getInt("price")
				,rs.getString("image")
				,rs.getString("country")
				,rs.getInt("height")
				,rs.getInt("weight")
				,rs.getString("content")
				,rs.getInt("readcount"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			close(pstmt);
			close(rs);
		}
		return goods;
	}
}
