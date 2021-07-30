package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.*;
import javax.servlet.http.*;
import model.Search;

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    public void service (HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Search.date = req.getParameter("date");
        Search.source = req.getParameter("source");
        Search.destination = req.getParameter("destination");
        Search.persons = Integer.parseInt(req.getParameter("persons"));

        if (Search.date.equals("")) {
            PrintWriter out = resp.getWriter();
            out.println("Please enter a valid date");
        }
        else {
            Search.day = getDay(Search.date);
            resp.sendRedirect("results.jsp");
        }
    }

    public String getDay(String dateInp) {
        LocalDate dt = LocalDate.parse(dateInp);
        return dt.getDayOfWeek().toString();
    }
}