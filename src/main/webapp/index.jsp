<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Form</title>
</head>

<script type='text/javascript'>
    function validarCampos()
    {
        if (document.formservlet.campo_nome.value=="")
        {
            alert("O preenchimento do campo nome é obrigatório");
            return;
        }
        if (document.formservlet.campo_data_nascimento.value=="")
        {
            alert("O preenchimento do campo data de nascimento é obrigatório");
            return;
        }
        if (document.formservlet.language.value=="")
        {
            alert("O preenchimento do campo idioma é obrigatório");
            return;
        }
        // if (document.formservlet.habtec.value==""){
        //     alert("O preenchimento do campo habilidades técnicas é obrigatório");
        //     return;
        //}

        let checkBoxes = document.getElementsByName('habtec')
        let noCheckedBoxes = true
        for (i = 0; i< checkBoxes.length; ++i) {
            if(checkBoxes[i].checked) {
                noCheckedBoxes = false
                break;
            }
        }
        if(noCheckedBoxes) {
            alert("O preenchimento do campo habilidades técnicas é obrigatório");
        }


        document.formservlet.submit();
    }
</script>

<body>
<%--@declare id="idade-idad"--%><h1><%= "Bem-vindo a minha Servlet de Formulário!" %></h1>
<br/>
<%--<a href="hello-servlet">Hello Servlet!</a>--%>



<form method="get" action="processa-form" enctype="multipart/form-data" name="formservlet">

    <label for="nome-id">Nome: </label>
    <input id="nome-id" type="text" name="campo_nome" value="" />

    <br/>
    <br/>

    <label for="idade-id">Data nascimento: </label>
    <input type="date" name="campo_data_nascimento" />

    <br/>

    <label for="" style="margin-top: 15px; display: block;">Selecione seu idioma nativo:</label>
    <input type="radio"  name="language" value="portugues"><label>Português</label><br />
    <input type="radio" name="language" value="ingles"><label>Inglês</label><br />
    <input type="radio" name="language" value="espanhol"><label>Espanhol</label><br />

    <!-- checked="checked"-->

    <br/>

    <label for="">Quais são suas habilidades técnicas? </label><br/>
    <input type="checkbox" name="habtec" value="java">Java<br/>
    <input type="checkbox" name="habtec" value="js">JavaScript<br/>
    <input type="checkbox" name="habtec" value="html">HTML<br/>
    <input type="checkbox" name="habtec" value="css">CSS<br/>


    <br /><br />

    <input type="submit" value="Salvar" onclick="validarCampos()"/>

</form>

</body>
</html>