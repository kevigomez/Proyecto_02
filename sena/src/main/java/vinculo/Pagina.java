package vinculo;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Conexion;
import model.UsuarioDao;
import model.UsuarioVo;

public class Pagina extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion=req.getParameter("accion");
        switch(accion){
            case "ht":
                req.getRequestDispatcher("HT.jsp").forward(req, resp);
                break;  
            case "registro":
                req.getRequestDispatcher("Registro.jsp").forward(req, resp);
                break;
            case "index":
                req.getRequestDispatcher("index.jsp").forward(req, resp);
                break;
            case "MEf":
                req.getRequestDispatcher("MEf.jsp").forward(req, resp);
                break;
        }
    }
    
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("nombre");
    String password = request.getParameter("password");
    
    UsuarioVo login = new UsuarioVo();
    login.setNombre(username);
    login.setContraseña(password);
    
    try {
        Connection con = Conexion.conectar(); // Establecer la conexión a la base de datos
        
        UsuarioDao usuarioDao = new UsuarioDao(con); // Crear una instancia de UsuarioDao con la conexión
        
        boolean ingreso = usuarioDao.ingresar(login); // Llamar al método ingresar en la instancia de UsuarioDao
        
        if (ingreso) {
            response.sendRedirect("MEf.jsp");
        } else {
            response.sendRedirect("errorlogin.jsp");
        }
        
        con.close(); // Cerrar la conexión
    } catch (Exception e) {
        // Manejo de la excepción
    }
}
}
