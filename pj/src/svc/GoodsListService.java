package svc;
import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import dao.GoodsDAO;
import vo.Goods;

public class GoodsListService {

	public static ArrayList<Goods> getGoodsList(String kind) {
			
			GoodsDAO goodsDAO = GoodsDAO.getInstance();
			Connection conn = getConnection();
			goodsDAO.setConnection(conn);
			ArrayList<Goods> goodsList = goodsDAO.selectGoodsList(kind);
			if(goodsList != null) {
				commit(conn);
			} else {
				rollback(conn);
			}
			ArrayList<Goods> goods = GoodsDAO.selectGoodsList(kind);
			close(conn);
		return goodsList;
	}

}
