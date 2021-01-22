package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import jsp.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jspf");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      jsp.CatalogBean catalogBean = null;
      synchronized (_jspx_page_context) {
        catalogBean = (jsp.CatalogBean) _jspx_page_context.getAttribute("catalogBean", PageContext.PAGE_SCOPE);
        if (catalogBean == null){
          catalogBean = new jsp.CatalogBean();
          _jspx_page_context.setAttribute("catalogBean", catalogBean, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      out.write('\n');

Vector<Category> vCategory = catalogBean.getAllCatalog();
Vector<Product> vCatalog = new Vector<Product>();
String action = request.getParameter("action");
if (action != null) {
    if (action.equals("search")) {
        String keyword = request.getParameter("keyword");
        vCatalog = catalogBean.getProductsCatalogSearch(keyword);
    } else if (action.equals("view")) {
        String id = request.getParameter("id");
        vCatalog = catalogBean.getProductsCatalog(id);
    }
} else {
    vCatalog = catalogBean.getPromotionProducts();
}

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Online Ticket</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
      out.write("<!-- any content can be specified here e.g.: -->\n");
      out.write("\n");
      out.write("<" + "title" + ">");
      out.write('\n');
      out.write("</" + "title" + ">");
      out.write("\n");
      out.write("<div style=\"display: flex; flex-direction: column; padding: 20px 0 60px 0; justify-content: center; align-items: center;\">\n");
      out.write("    <img src=\"https://cdn.idntimes.com/content-images/community/2019/11/momoland-header-284fe35e22622d8794b9159dcda947fd_600x400.png\">\n");
      out.write("    \n");
      out.write("    <h1 style=\"margin: 0; margin-top: 20px;\">GET YOUR TICKET !!</h1>\n");
      out.write("    <hr size=\"5px\" width=\"1000px\" color=\"orange\">\n");
      out.write("\n");
      out.write("    <form method=\"GET\" action=\"index.jsp\" style=\"margin: 0; margin-top: 20px;\">\n");
      out.write("        <input type=\"hidden\" name=\"action\" value=\"search\">\n");
      out.write("        <input type=\"text\" name=\"keyword\" placeholder=\"Cari tiket disini gan...\">\n");
      out.write("        <input type=\"submit\" value=\"Cari\">\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div style=\"display: flex;\">\n");
      out.write("        <div style=\"display: flex; flex-direction: column; margin-right: 20px;\">\n");
      out.write("            <div style=\"text-align: center; background: orange; color: white; padding: 10px 20px;\"><b>Kategori</b></div>\n");
      out.write("            \n");
      out.write("            ");

            Iterator<Category> cc = vCategory.iterator();
            while (cc.hasNext()) {
                Category c = cc.next();
            
      out.write("\n");
      out.write("                <div style=\"display: block; background: white; padding: 5px 20px; \">\n");
      out.write("                    <a href=\"index.jsp?action=view&id=");
      out.print(c.getId());
      out.write("\" title=\"");
      out.print(c.getDescription());
      out.write("\" style=\"color: black; text-decoration: none;\">");
      out.print(c.getName());
      out.write("</a>\n");
      out.write("                </div>\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div>\n");
      out.write("            ");

            Iterator<Product> pp = vCatalog.iterator();
            while (pp.hasNext()) {
                Product p = pp.next();
            
      out.write("\n");
      out.write("                <div style=\"display: flex;\">\n");
      out.write("                    <img src=\"");
      out.print(p.getImage());
      out.write("\" style=\"max-width: 200px; margin-right: 20px;\">\n");
      out.write("                    <div style=\"display: flex; flex-direction: column; justify-content: center;\">\n");
      out.write("                        <b>");
      out.print(p.getName());
      out.write("</b>\n");
      out.write("\n");
      out.write("                        <br/>\n");
      out.write("                        <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Search Name:</td>\n");
      out.write("                            <td>");
      out.print(p.getSKU());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Company:</td>\n");
      out.write("                            <td>");
      out.print(p.getBrand());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Category:</td>\n");
      out.write("                            <td>");
      out.print(p.getCategory().getName());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"vertical-align: top;\">Description:</td>\n");
      out.write("                            <td>");
      out.print(p.getDescription());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Price:</td>\n");
      out.write("                            <td>");
      out.print(p.getPrice());
      out.write(" IDR</td>\n");
      out.write("                        </tr>\n");
      out.write("                        </table>\n");
      out.write("                        <br/>\n");
      out.write("\n");
      out.write("                        <form method=\"POST\" action=\"shopcart.jsp\" style=\"margin: 0;\">\n");
      out.write("                            <input type=\"hidden\" name=\"action\" value=\"add\">\n");
      out.write("                            <input type=\"hidden\" name=\"id\" value=\"");
      out.print(p.getId());
      out.write("\">\n");
      out.write("                            Quantity: <input type=\"number\" style=\"width: 3rem;\" name=\"qty\" value=\"1\"> <input type=\"submit\" value=\"Add to cart\">\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <br/>\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
