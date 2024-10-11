package org.example.staffmaster2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.staffmaster2.dao.CondidatureDao;
import org.example.staffmaster2.dao.OffreDao;
import org.example.staffmaster2.entity.Candidature;
import org.example.staffmaster2.entity.Employee;
import org.example.staffmaster2.entity.Offre;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/condidature")
public class CondidatureServlet extends HttpServlet {
    private CondidatureDao condidatureDao;

    @Override
    public void init() throws ServletException {
        condidatureDao = new CondidatureDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Candidature> candidatures = condidatureDao.getCandidatures();

        String filterCompetance = request.getParameter("competance");

        if (filterCompetance != null && !filterCompetance.isEmpty()) {
            candidatures = candidatures.stream()
                    .filter(c -> c.getCompetance().toLowerCase().contains(filterCompetance.toLowerCase()))
                    .collect(Collectors.toList());
        }

        request.setAttribute("candidatures", candidatures);

        request.getRequestDispatcher("/view/listCandidatures.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String competance = request.getParameter("competance");
        String offreIdStr = request.getParameter("offreId");

        Long offreId = Long.parseLong(offreIdStr);
        Boolean status = true;

        Candidature candidature = new Candidature(null, offreId, email, competance, status);

        condidatureDao.addCondidature(candidature);

        response.sendRedirect("offre?action=listOffres");
    }
}
