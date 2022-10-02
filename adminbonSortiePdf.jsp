<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url= "jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
        user="root" password="Khalil123@@"
 
    /> 
     
    <title>bon sortie - ADMIN</title>
<sql:query var="user" dataSource="${myDS}">
SELECT * FROM projet.bonsortie  ORDER BY nomDemandeur limit 1 ;
    </sql:query>

    <script src="https://kendo.cdn.telerik.com/2017.1.223/js/jquery.min.js"></script>

    <script src="https://kendo.cdn.telerik.com/2017.1.223/js/kendo.all.min.js"></script>
</head>
<body>
<div id="example">
    <div class="box wide hidden-on-narrow">
        <div class="box-col">
           <!-- <h4>SVP selectionner un type </h4>
              <select id="paper" style="width: 100px;">
               <option value="size-a4" selected>A4</option>
                <option value="size-letter">Type letere</option>
                 <option value="size-executive">Executive</option>-->
            </select>
        </div>
        <div class="box-col">
            <p style="text-align&#58; center;">
            <p>telecharger le bon de reservation par ici</p>
            <button class="export-pdf k-button" onclick="getPDF('.pdf-page')"><img alt="" src="https://img.icons8.com/color-glass/344/export-pdf.png" height="40" width="40"></button>
            </p>
        </div>
    </div>

    
  </div>
    <div class="page-container hidden-on-narrow">
        <div class="pdf-page size-a4">
            <div class="pdf-header">
<img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK-wI6x6cEfH-YvrNm6RSqHoYDbwwoggkxqQ&usqp=CAU" height="70" width="110"> <br> <br> <br>
                                    </div>
            <h5 style="font-size:32pt; color:red"> bon de reservation </h5>
            <img style="margin-left: 70%;" src="https://api.qrserver.com/v1/create-qr-code/?data=http%3A%2F%2Flocalhost%3A8080%2Fprojet%2F&size=220x220&margin=0" height="150" width="150">
            
         
          <br>
            <div class="pdf-footer">
            </div>
           

            <br> <br> <br> <br> <br> <br> <br>
             <div class="for">
                 <c:forEach var="users" items="${user.rows}">
                 <br><br><br><br><br><br><br>
                 <p>nom de demandeur: </p>
                 <h2> <c:out value="${users.nomDemandeur}"/></h2>
                  <p>ref du bien  </p>
                  <br><img src="https://avnode.net/warehouse/videos_previews/2013/03/1140x641/codebar-frequenz__mp4_png.jpg" height="40" width="150">
                 <h2><c:out value="${users.refBien}"/></h2>
                 <br><p>Qte demander</p>
                 <h2><c:out value="${users.qteServie}"/></h2>
                 <br> <p>date du bon de sortie</p>
                  <h2> <c:out value="${users.dateBS}"/></h2>
               <p>---------------------------------------</p>
                </c:forEach>
            </div>	
            <div class="pdf-body">
                <div id="grid"></div>
                <p class="signature">
                    <br/>       
                    <br><br><br><br><br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> 
                    <p> signature digital d'admin Gestion Des Mobiliers</p>
                    <p>   </p>
            <img src="data:image/png;base64,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" >

<br/>
                </p>
            </div>
        </div>
    </div>

    <div class="responsive-message"> </div>

    <style>
       
        .pdf-page {
            font-family: "DejaVu Sans", "Arial", sans-serif;
          font-size: 12px;
          padding: 50px;
        }
    </style>

    <script>
        // Import DejaVu Sans font for embedding

        // NOTE: Only required if the Kendo UI stylesheets are loaded
        // from a different origin, e.g. cdn.kendostatic.com
        kendo.pdf.defineFont({
            "DejaVu Sans": "https://kendo.cdn.telerik.com/2016.2.607/styles/fonts/DejaVu/DejaVuSans.ttf",
            "DejaVu Sans|Bold": "https://kendo.cdn.telerik.com/2016.2.607/styles/fonts/DejaVu/DejaVuSans-Bold.ttf",
            "DejaVu Sans|Bold|Italic": "https://kendo.cdn.telerik.com/2016.2.607/styles/fonts/DejaVu/DejaVuSans-Oblique.ttf",
            "DejaVu Sans|Italic": "https://kendo.cdn.telerik.com/2016.2.607/styles/fonts/DejaVu/DejaVuSans-Oblique.ttf"
        });
    </script>

    <script>
        function getPDF(selector) {
            kendo.drawing.drawDOM($(selector)).then(function (group) {
                kendo.drawing.pdf.saveAs(group, "bonSortie.pdf");
            });
        }

    </script>
    <style>
      .date_block {
  padding-left: 10px;
  
}
      .menu_table {
  padding: 10px;
  
}
      .new_table{
  border: 2px solid black;
   }
      .supp_stroke {
  border-bottom: 1.5px solid black;
  
}
      table{
        border-spacing: 0px;
        border-collapse: collapse;
      }
        .pdf-page {
            margin: 0 auto;
            box-sizing: border-box;
            box-shadow: 0 5px 10px 0 rgba(0, 0, 0, .3);
            background-color: #fff;
            color: #333;
            position: relative;
        }

        .pdf-header {
            position: absolute;
            top: .5in;
            height: .6in;
            left: .5in;
            right: .5in;
            
        }

        .invoice-number {
            padding-top: .17in;
            float: right;
        }

        .pdf-footer {
            position: absolute;
            bottom: .5in;
            height: .6in;
            left: .5in;
            right: .5in;
            padding-top: 10px;
           
            text-align: left;
            color: #787878;
            font-size: 12px;
        }

        .pdf-body {
            position: absolute;
            top: 3.7in;
            bottom: 1.2in;
            left: .5in;
            right: .5in;
        }

        .size-a4 {
            width: 8.3in;
            height: 11.7in;
        }

        .size-letter {
            width: 8.5in;
            height: 11in;
        }

        .size-executive {
            width: 7.25in;
            height: 10.5in;
        }

        .company-logo {
            font-size: 30px;
            font-weight: bold;
            color: #3aabf0;
        }

        .for {
            position: absolute;
            top: 1.5in;
            left: .5in;
            width: 2.5in;
        }

        .from {
            position: absolute;
            top: 1.5in;
            right: .5in;
            width: 2.5in;
        }

        .from p, .for p {
            color: #787878;
        }

        .signature {
            padding-top: .5in;
        }
    </style>

</div>


</body>

