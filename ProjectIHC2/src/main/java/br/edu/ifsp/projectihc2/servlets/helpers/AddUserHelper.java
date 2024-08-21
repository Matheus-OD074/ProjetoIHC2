package br.edu.ifsp.projectihc2.servlets.helpers;

import br.edu.ifsp.projectihc2.model.daos.UserDao;
import br.edu.ifsp.projectihc2.model.entities.User;
import br.edu.ifsp.projectihc2.utils.PasswordEncode;
import br.edu.ifsp.projectihc2.utils.SearcherDataSource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddUserHelper implements Helper {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(PasswordEncode.encode(password));
		
		UserDao userDao = new UserDao(SearcherDataSource.getInstance().getDataSource());
		
		if(userDao.save(user)) {
			req.setAttribute("result", "registered");
			return "/login.jsp";
		}else {
			req.setAttribute("result", "notRegistered");
			return "/user-register.jsp";
		}
	}

}
