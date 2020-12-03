package svc;
import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.GoodsDAO;
import vo.Goods;

public class GoodsListService {

	public ArrayList<Goods> getGoodsList() {
			GoodsDAO goodsDAO = GoodsDAO.getInstance();
			Connection conn = getConnection();
			goodsDAO.setConnection(conn);
			ArrayList<Goods> goodsList = goodsDAO.selectDogList();
			close(conn);
		return goodsList;
	}

}
