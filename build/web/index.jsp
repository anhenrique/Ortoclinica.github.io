 <!--tela principal do site-->>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="css/estilos.css" />

        <title>Orto Clinica</title>
        <link rel="icon" href="assets/Favicon.ico"></head>
    <body>
        <div id="main">
        <div id="header">
       <!--este include da linha de baixo esta na pasta includes,se for criar outras paginas é só incluir ela, o mesmo para o rodapé-->      
           <%@include file="includes/menu.jsp" %>
        </div>
        
 <!--coluna da esquerda que possui 2 divs, a do video e um com espaço em branco-->
 
        <div id="indexLeftColumn">
           
           
            <!-- configurações do video-->           <br>
            <div class="boxleft">
           

<video width="900" height="400" controls="controls" bottom="0" position:absolute>
<source src="video/animacao.mp4" type="video/mp4">
<object data="" width="320" height="240" bottom="0">
<embed width="500" height="240"  src="Yes Bank Advertisment.mp4">
</object>        
        </div>
        </div>
 
  <!-- coluna da direita com as 6 divs-->
    <div id="content">
        <div id="indexRightColumn">
            
            
            <h3> Especialidades </h3>
                <div class="categoryBox">       
                   

            
                    <a href="info_trauma.jsp">               <h4>  Traumatologia </h4> 
É o ramo da medicina especializado nos traumatismos e nas suas consequências geralmente de urgência.
Os especialistas em trauma, conhecidos como traumatologistas, estudam as lesões que se produzem no sistema
músculo-esquelético e motor. 
                    </a>
                    </div>
              
            
            
            
    <div class="categoryBox">
        
        
        <a href="info_pediatria.jsp">  <h4>Pediatria </h4> 
A Ortopedia Pediátrica é uma especialidade ampla que contempla: doenças e defeitos congênitos,
alterações do desenvolvimento e fraturas que acometem lactentes, crianças e adolescentes.
        </a>
        </div>
      
            
    <div class="categoryBox">
        
       
            
        <a href="info_coluna.jsp"><h4> Coluna </h4> 
A coluna vertebral desempenha um papel extremamente importante em nossos corpos como o suporte 
do peso do tronco e da cabeça, permitindo movimento, flexibilidade e protegendo a medula espinhal.
        </a>
        </div>
    
        
            <div class="categoryBox">
      
            
                <a href="info_quadril.jsp">      <h4>Quadril </h4> 
A articulação do quadril é uma das articulações mais importantes no corpo humano.
Ele nos permite caminhar, correr e pular. Suporta o peso do nosso corpo através da conexão 
com nossas pernas.</a>
          
        </div>
           
            
            <div class="categoryBox">
        
   
                <a href="info_pe.jsp">     <h4>Pé </h4> 
Estes ortopedistas se especializaram no diagnóstico, cuidado e tratamento de pessoas com desordens na 
região do pé e tornozelo. Isto inclui os ossos, articulações, músculos, tendões e nervos. 
                </a>
    </div>
                
           
            <div class="categoryBox">
        
            
                <a href="info_mao.jsp">  <h4>Mão </h4> 
A mão é um órgão extremamente complexo e importante. A cirurgia da mão é uma subespecialidade da ortopedia
e da cirurgia plástica que prepara o médico para o tratamento de diversas patologias da mão e do punho.
                </a> 
                </div>
            
              <div class="categoryBox">
        
            
                  <a href="info_ondas.jsp"> <h4>Ondas de choque</h4>
As ondas de choque são ondas acústicas de alta energia. Sua aplicação na medicina começou, 
no tratamento de cálculos renais por meio do uso de equipamentos litotripsores. 
                  </a>
                           
                </div>
            <div class="categoryBox">
                <a href="info_acupuntura.jsp"><h4>Acupuntura </h4> 
A Acupuntura é o ramo da Medicina Tradicional Chinesa, em uso a 3000 anos, que promove o 
tratamento da dor por meio de aplicação de agulhas em pontos específicos do corpo 
(em especial dorso e membros), ocasionando o relaxamento muscular e regulação do limiar de dor.
                </a>       
                </div>
        </div>
            
            
            
                
                <img src="img/Bradesco.jpg">
                <img src="img/Mapfre.jpg">
                <img src="img/Mediservice.jpg">
                <img src="img/Notredame.jpg">
                <img src="img/Unimed.jpg">
                <img src="img/goldencross.jpg">
                <img src="img/portoseguro.jpg">
                <img src="img/sulamerica.jpg">
                
                </div>
            
       
        
        </div>
    
  
      <%@include file="includes/rodape.jsp" %>
    </body>
</html>
