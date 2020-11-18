<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rating Reports</title>
	
</head>
<body>

	<form action="ratingreports" method="post">
            <h1>Display Ratings by Date and MCPP</h1>
            
            Date: <input type = "text" name = "date" value="${fn:escapeXml(param.date)}" >
            <br/>
            MCPP: <input type = "text" name = "MCPP" value="${fn:escapeXml(param.MCPP)}" >
            
            <input type = "submit" value = "Submit" />
            
      </form>
      
	
	<h1>${messages.title}</h1>
        <table border="1">
        	<tr>
                <th>RecordHistoryID</th>
                <th>CurrentRating</th>
                <th>SafetyRankingUp</th>
                <th>CreatedDate</th>
                <th>MCPP</th>
                <th>ReportID</th>
            </tr>
            <c:forEach items="${ratingReports}" var="ratingReport" >
            	<tr>
                    <td><c:out value="${ratingReport.getRecordHistoryID()}" /></td>
                    <td><c:out value="${ratingReport.getCurrentRating()}" /></td>
                    <td><c:out value="${ratingReport.getSafetyRankingUP()}" /></td>
                    <td><fmt:formatDate value="${ratingReport.getCurrentDate()}" pattern="MM-dd-yyyy hh:mm:sa"/></td>
                    
                    
                    <td><c:out value="${ratingReport.getNeighborhoods().getMCPP()}"/></td>
                    <td><c:out value="${ratingReport.getRatingReports().getReportId()}" /></td>
                </tr>
            </c:forEach>
       </table>
       
       
 

</body>
</html>