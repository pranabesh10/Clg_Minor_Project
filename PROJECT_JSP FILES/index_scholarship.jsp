<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:include page="front_header.jsp"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scholarship</title>
    <style>
    
/* page title */
@font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
        }
#container {
    min-height: 110px;
}
.page {
    max-width: 1170px;
    margin: 0 auto;
    position: relative;
}


.page-title h1{
	text-align:center;
	margin-top:50px;
	margin-bottom:50px;
	font-family: myfont;
	color: #131356;
	font-size: 25px;
	font-size: 30px;
	
}

/* scholarship part */
table {
    background-color: transparent;
    font-size: 17px;
    margin-top: 5%;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
td {
    display: table-cell;
    vertical-align: inherit;
}
table tr td a{
    text-decoration: none;
}
table tr td a:hover{
    /* text-decoration: underline; */
    color: rgb(98, 97, 97);
    transition: .7s;
}

#empty{
	height: 100px;

}
    </style>
</head>

<body>
<div id="empty"></div>
    <div id="container">
        <div class="page">
            <div class="page-title">
                <h1>KIITM Scholarship</h1>
            </div>
        </div>
    </div>

    <div id="main" style="margin:10px 25px;">
    
    <div align="justify" style="font-size:12px; margin-top:10px; text-align: center">
       <img border="0" src="images/scholarship.jpg" width="300" height="250"
                                style="border: 0px solid rgb(34, 102, 170); margin-left:40%;" align="left"> </div>

        <table border="0" valign="top" align="center" cellpadding="0" cellspacing="0" width="100%">

            <tbody>
                <tr>
                    <td>
                        
                            <table border="1">
                                <tbody>
                                    <tr>
                                        <th>Portal</th>
                                        <th>Scholarship</th>
                                    </tr>
                                    <tr>
                                        <td><a href="https://www.svmcm.wbhed.gov.in/" target="_blank">Swami Vivekananda
                                                Merit cum Means Scholarship</a></td>
                                        <td>Swami Vivekananda Merit-cum-Means Scholarship<br> Kanyashree(K3)<br>Non-NET
                                            Junior Research Fellow and NET-Lecturrership</td>
                                    </tr>
                                    <tr>
                                        <td><a href="http://wbmdfcscholarship.in/" target="_blank">Aikyashree - Minority
                                                Scholarship</a></td>
                                        <td>Post Matric Scholarship <br>Merit-cum-Means Scholarships<br>
                                            Talent Support stipend<br>
                                            Swami Vivekananda Merit-cum-Means</td>
                                    </tr>

                                    <tr>
                                        <td><a href="https://www.wbkanyashree.gov.in" target="_blank">Kanyashree
                                                Scholarship</a></td>
                                        <td>Kanyashree(K1)<br>Kanyashree(K2)</td>
                                    </tr>


                                    <tr>
                                        <td><a href="http://oasis.gov.in/" target="_blank">Scholarship to SC, ST and OBC
                                                Students (Select North 24 Parganas as District)</a></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td><a href="http://www.tsp.wbmdfc.co.in/" target="_blank">State Govt. Sponsored
                                                stipend under Talent Support Programme </a></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td><a href="https://scholarships.gov.in/" target="_blank">National Scholarship
                                                Portal</a></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td><a href="https://www.aicte-india.org/schemes/students-development-schemes/PG-Scholarship-Scheme/General-instruction"
                                                target="_blank">GATE Scholarship </a></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td><a href="https://www.aicte-india.org/bureaus/jk" target="_blank">PMSSS
                                                J&amp;K Scholarship </a><a href="datas/users/0-j-and-k-pmsss-bappa.pdf">
                                                <font color="red">Welcome Letter</font>
                                            </a></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                            <br><br><br> <br><br><br><br><br><br><br><br>

                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>

</html>
<jsp:include page="footer.jsp"/>