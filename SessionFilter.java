package filters;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;


@WebFilter("/*")
public class SessionFilter implements Filter {

	private List<String> allowedPaths = new ArrayList<String>();

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		allowedPaths.add("css");
		allowedPaths.add("fonts");
		allowedPaths.add("images");
		allowedPaths.add("js");
		allowedPaths.add("scss");
		Filter.super.init(filterConfig);
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;

		String path = req.getServletPath();

		boolean isAllowed = false;
		for (String allowedPath : allowedPaths) {
			if (path.startsWith(allowedPath)) {
				isAllowed = true;
				break;
			}
		}

		if (isAllowed) {
			chain.doFilter(req, resp);
		} else {
			
			User user = (User) req.getSession().getAttribute("user");
			if (path.startsWith("/admin")) {
				if (user == null) {
					resp.sendRedirect("/projet/login");
				} else {
					if (user.isAdmin()) {
						chain.doFilter(request, response);
					} else {						
							resp.sendRedirect("/");
						
						
					}
				}
			} else if (path.startsWith("/etudiant")) {
				if (user == null) {
					resp.sendRedirect("/projet/login");
				} else {
					if (user.isEtudiant()) {
						chain.doFilter(request, response);
					} else {
						resp.sendRedirect("/projet/");
					}
				}
			} else if (path.startsWith("/professeur")) {
				if (user == null) {
					resp.sendRedirect("/projet/login");
				} 
				else {
					if (user.isProfesseur()) {
						chain.doFilter(request, response);
					} else {
						resp.sendRedirect("/projet/");
					}
				}
			} else if (path.startsWith("/*")) {
				if (user == null) {
					resp.sendRedirect("/projet/login");
				} else {
					if (user.isEtudiant()) {
						chain.doFilter(request, response);
					} else {
						resp.sendRedirect("/projet/");
					}
				}
			}
			
			else if (path.startsWith("/login")) {
				if (user == null) {
					chain.doFilter(request, response);
				} else {
					resp.sendRedirect("/projet/");
				}
			} else if (path.equals("/logout")) {
				if (user != null) {
					chain.doFilter(request, response);
				} else {
					resp.sendRedirect("/projet/");
				}
			} else if (path.equals("/signup")) {
				if (user == null) {
					chain.doFilter(request, response);
				} else {
					resp.sendRedirect("/projet/");
				}
			} else if (path.equals("/")) {
				if (user == null) {
					resp.sendRedirect("/projet/login");
				} else {
					if (user.isAdmin()) {
						resp.sendRedirect("/projet/admin");
					} else if (user.isEtudiant()) {
						resp.sendRedirect("/projet/etudiant");
					} else if (user.isProfesseur()) {
						resp.sendRedirect("/projet/professeur");
					}
				}
			} else {
				chain.doFilter(request, response);
			}

		}

	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		Filter.super.destroy();
	}
}