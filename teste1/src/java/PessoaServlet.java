import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Pessoa;


public class PessoaServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nome = request.getParameter("nome");
        String idade = request.getParameter("idade");
        String email = request.getParameter("email");
        
        Pessoa p = new Pessoa();
        p.setNome(nome.toUpperCase());
        p.setIdade(idade); 
        p.setEmail(email);
        
        
        request.setAttribute("pessoa", p);
        RequestDispatcher rd=request.getRequestDispatcher("/index_2.jsp");  
        rd.include(request, response); 
    }


}

