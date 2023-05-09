<%@page language="java" import="java.util.ArrayList, metier.Canal"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Consultation</title>
</head>
<div>
	<body>
		<form method="get" action="/web_app_tp04/CanalListController">
			<input name="filter"><br>
			<button type="submit">filtrer</button>
			<button type="reset">annuler</button>
		</form>
		Liste des canaux
		<hr>
		<table border="1">
			<tr>
				<th>Nom:</th>
				<th>ID:</th>
				<th colspan="2">Actions:</th>

			</tr>
			<%

			ArrayList canaux = (ArrayList) session.getAttribute("listOfCanaux");
			if (canaux != null) {
				
				for (int i = 0; i < canaux.size(); i++) 
				{
					out.println("<tr>");
					out.println("<td> " + ((Canal) canaux.get(i)).getNomCanal() + "</td>");
					out.println("<td> " + ((Canal) canaux.get(i)).getIdCanal() + "</td>");
					out.print("<td>  <a href ='CanalEditionController?id="+((Canal) canaux.get(i)).getIdCanal()+"&mode=Edition"+"'>Modifier</a> </td>");
					out.println("<td>  <a href ='CanalEditionController?id="+((Canal) canaux.get(i)).getIdCanal()+"&mode=Suppression"+"'  onclick='return confirm(\"Voulez vous vraiment supprimer ce canal ?\")'      >Supprimer</a> </td>");

					
					out.println("</tr>");
				}
				
			}
		%>
		
			
		</table>

<hr>
<a href ="CanalForm.jsp">Ajouter</a>
</div>

</body>
</html>