package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import dao.GoodsDAO;
import vo.Goods;
public class GoodsViewService {

	public ArrayList<Goods> getGoodsView(String kind) {
		GoodsDAO goodsDAO = GoodsDAO.getInstance();
		Connection conn = getConnection();
		goodsDAO.setConnection(conn);
		ArrayList<Goods> select = GoodsDAO.selectGoodsList(kind);
		
		if(select != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		ArrayList<Goods> goods = goodsDAO.selectGoodsList(kind);
		close(conn);
		
		return goods;
	}

}
