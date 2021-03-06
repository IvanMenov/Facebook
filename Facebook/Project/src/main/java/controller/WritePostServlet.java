package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exceptions.AutoGeneratedIDException;
import model.IPostingDAO;
import model.Post;
import model.PostingDAO;

@WebServlet("/posting")
public class WritePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String posting = request.getParameter("posting");
		HttpSession session = request.getSession();
		IPostingDAO dao = new PostingDAO();
		Integer id = null;
		
		String email = (String) session.getAttribute("email");
		String friendEmail = (String) session.getAttribute("friend_email");
		try {

			if(friendEmail == null) {
				dao.writeAPost(email, email, posting);
				response.sendRedirect("./getAllPosts");
			} else {
				dao.writeAPost(email, friendEmail, posting);
				response.sendRedirect("./getAllPosts?friend_email=" + friendEmail);
			}
		} catch (AutoGeneratedIDException e) {
			e.printStackTrace();
		}

	}
}
