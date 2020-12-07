package action;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.GoodsListService;
import vo.ActionForward;
import vo.Goods;

public class GoodsListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String kind = "cpu";
		if(request.getParameter("kind") != null) kind = request.getParameter("kind");
		ArrayList<Goods> goods = GoodsListService.getGoodsList(kind);
		ArrayList<String> todayImageList = new ArrayList<String>();
		Cookie[] cookieArray = request.getCookies();

		if (cookieArray != null) {
			for (int i = 0; i < cookieArray.length; i++) {
				if (cookieArray[i].getName().startsWith("today")) {
					// startWith -> today로 시작하는게 있다면.
					todayImageList.add(cookieArray[i].getValue());
				}
			}
		}
		GoodsListService goodsListService = new GoodsListService();
		ArrayList<Goods> goodsList = goodsListService.getGoodsList(kind);
		request.setAttribute("goodsList", goodsList);
		request.setAttribute("todayImageList", todayImageList);
		ActionForward forward = new ActionForward("goodsList.jsp", false);
		return forward;
	}

}
