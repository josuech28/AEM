<%--

  (Training) Basic Content Page Component component.

  (Training) Basic Content Page Component + properties

--%>

<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false" %>
	<html>
		<head>
			<title>CQ5 Basic Content <%= currentPage.getTitle() %></title>
			<cq:include script="/libs/wcm/core/components/init/init.jsp"/>
		</head>
		<body>
			<h1><%= currentPage.getTitle() %></h1>
			<hr/>
			
			<h3>Page Builtin properties</h3>
			<p>Page Title (getPageTitle): <%= currentPage.getTitle() %></p>
			<p>Page Name (getName) <%= currentPage.getName() %></p>
			<p>Page Description (getDescription) <%= currentPage.getDescription() %></p>
			<p>Page Path (getPath)<%= currentPage.getPath() %></p>
			<p>Page Depth (getDepth) <%= currentPage.getDepth() %></p>
			<br/>

			<h3>Page Properties (properties object)</h3>
			<p>Page Name ("jcr:title"): <%= properties.get("jcr:title",String.class) %></p>
			<p>Page Name ("pageTitle"): <%= properties.get("pageTitle",String.class) %></p>
			<p>Page Name ("title"): <%= properties.get("title",String.class) %></p>
			<p>Page Name ("name"): <%= properties.get("name",String.class) %></p>
			<hr/>

			<h3>Node Properties</h3>
			<p>Node title ("jcr:title"): <%= currentNode.properties.get("jcr:title").getString()%></p>
			<p>Page description ("jcr:description"): <%= properties.get("jcr:description",String.class) %></p>
			<p>Page description ("description"): <%= properties.get("description",String.class) %></p>
			<p>Page Path ("path"): <%= properties.get("path",String.class) %></p>
			<hr/>

			<h3>Style built in properties</h3>
			<p>Style path (getPath): <%= currentDesign.getCssPath(); %></p>
			<p>Style ID (getId): <% currentDesign.getId(); %></p>

			<p>
				AEM Trainning, this is the first page using AEM...

				Loading... Loading...
			</p>
	        <p>
	            This file was updated on <b>11:10am</b>
	        </p>
	        <td width="100%"><b>&nbsp;Current  Date 
				and time is:&nbsp; <font color="#FF0000">
				<%= new java.util.Date() %>
				</font></b></td>
		</body>
	</html>