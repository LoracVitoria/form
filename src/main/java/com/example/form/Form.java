package com.example.form;

import java.io.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet("/processa-form")
public class Form extends HttpServlet {

//    private String message;
//
//    public void init() {
//        message = "He-he-he!";
//    }

    private static final long serialVersionUID = 1L;
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) {


            String nomeParam = req.getParameter("campo_nome");
            String nascimentoParam = req.getParameter("campo_data_nascimento");
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate dateNascimento = LocalDate.parse(nascimentoParam, formatter);
            String language = req.getParameter("language");
            String[] habtec = req.getParameterValues("habtec");


            System.out.println("Nome: " + nomeParam);
            System.out.println("Data Nascimento	: " + dateNascimento);
            System.out.println("Idioma Nativo: " + language);
            System.out.println("Habilidades Técnicas: " + habtec[0]);

    }
}