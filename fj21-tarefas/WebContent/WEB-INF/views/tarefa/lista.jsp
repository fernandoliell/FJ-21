<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
		<a href="novaTarefa">Criar nova tarefa</a>
		<br/> <br/>
		<table>
			<tr>
				<th>Id</th>
				<th>Descri��o</th>
				<th>Finalizado?</th>
				<th>Data de finaliza��o</th>
			</tr>
			<c:forEach items="${tarefas}" var="tarefa">
				<tr>
					<td>${tarefa.id}</td>
					<td>${tarefa.descricao}</td>
					<c:if test="${tarefa.finalizado eq false}">
						<td>N�o Finalizado</td>
					</c:if>
					<c:if test="${tarefa.finalizo eq true }">
						<td>Finalizado</td>
					</c:if>
					<td>
						<fmt:formatDate value="$tarefa.dataFinalizacao.time" pattern="dd/MM/yyyy"/>
					</td>
				</tr>	
			</c:forEach>
		</table>
	</body>
</html>