package br.edu.ifsp.projectihc2.servlets.helpers;

import java.util.Optional;

import br.edu.ifsp.projectihc2.model.daos.UserDao;
import br.edu.ifsp.projectihc2.model.entities.User;
import br.edu.ifsp.projectihc2.utils.SearcherDataSource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginHelper implements Helper {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		UserDao userDao = new UserDao(SearcherDataSource.getInstance().getDataSource());
		Optional<User> optional = userDao.getUserByEmailAndPassword(email, password);
		if(optional.isPresent()) {
			User user = optional.get();
			HttpSession session = req.getSession();
			session.setMaxInactiveInterval(600);
			session.setAttribute("user", user);
			return "/ControllerServlet?action=listActivities";
		}else {
			req.setAttribute("result", "loginError");
			return "/login.jsp";
		}
	}

}
