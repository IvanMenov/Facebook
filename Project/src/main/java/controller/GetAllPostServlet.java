package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Post;
import model.Post;
import model.PostingDAO;

/**
 * Servlet implementation class GetAllPostServlet
 */
@WebServlet("/getAllPosts")
public class GetAllPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostingDAO dao = new PostingDAO();
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		
		List<Post> allPosts = dao.getAllPosts(email);
				
		for (Post post : allPosts) {
			
			System.out.println(post);
		}
	
		session.setAttribute("posts", allPosts);
		
		
		response.sendRedirect("./view/home.jsp");
		
	}

}
