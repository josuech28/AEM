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
			<%currentDesign.writeCssIncludes(pageContext); %>
		</head>
		<body>
			<h1><%= currentPage.getTitle() %></h1>
			<hr/>

			<table>
				<tr class="table-title">
					<th colspan="2">
						<h3>Page builtin properties</h3>
					</th>
				</tr>
				<tr class="table-title">
					<th>
						Properties
					</th>
					<th>
						Value
					</th>
				</tr>
				<tr class="odd-line">
					<td>
						Page Name (getPageTitle)
					</td>
					<td>
						<%= currentPage.getName() %>
					</td>
				</tr>
				<tr class="">
					<td>
						Page Description (getDescription)
					</td>
					<td>
						<%= currentPage.getDescription() %>
					</td>
				</tr>
				<tr class="odd-line">
					<td>
						Page Path (getPath)
					</td>
					<td>
						<%= currentPage.getPath() %>
					</td>
				</tr>
				<tr class="">
					<td>
						Page Depth (getDepth)
					</td>
					<td>
						<%= currentPage.getDepth() %>
					</td>
				</tr>
			</table>
			<br/>

			<table>
				<tr class="table-title">
					<th colspan="2">
						<h3>Page properties (properties object)</h3>
					</th>
				</tr>
				<tr class="odd-line">
					<td>
						Page name ("jcr:title")
					</td>
					<td>
						<%=properties.get("jcr:title",String.class) %>
					</td>
				</tr>
				<tr>
					<td>
						Page name ("page Title")
					</td>
					<td>
						<%=properties.get("page Title",String.class) %>
					</td>
				</tr>
				<tr class="odd-line">
					<td>
						Page name ("title")
					</td>
					<td>
						<%=properties.get("title",String.class) %>
					</td>
				</tr>
				<tr>
					<td>
						Page name ("name")
					</td>
					<td>
						<%=properties.get("name",String.class) %>
					</td>
				</tr>
				<tr class="odd-line">
					<td>
						Page name ("title")
					</td>
					<td>
						<%=properties.get("title",String.class) %>
					</td>
				</tr>
				<tr class="">
					<td>
						Page description ("jcr:description")
					</td>
					<td>
						<%=properties.get("jcr:description",String.class) %>
					</td>
				</tr>
				<tr class="odd-line">
					<td>
						Page description ("description")
					</td>
					<td>
						<%=properties.get("description",String.class) %>
					</td>
				</tr>
				<tr>
					<td>
						Page path ("path")
					</td>
					<td>
						<%=properties.get("path",String.class) %>
					</td>
				</tr>
				<tr class="odd-line">
					<td>
						Page depth ("depth")
					</td>
					<td>
						<%=properties.get("depth",String.class) %>
					</td>
				</tr>
			</table>
			<hr/>

			<table>
				<tr class="odd-line">
					<td>
						Page description (getDescription)
					</td>
					<td>
						<%= currentPage.getDescription() %>
					</td>
				</tr>
				<tr class="">
					<td>
						Page path (getPath)
					</td>
					<td>
						<%= currentPage.getPath() %>
					</td>
				</tr>
				<tr class="odd-line">
					<td>
						Page depth (getDepth)
					</td>
					<td>
						<%= currentPage.getDepth() %>
					</td>
				</tr>
			</table>
			<hr/>

			<table>
				<tr class="table-title">
					<th colspan="2">
						<h3> Style Builtin properties</h3>
					</th>
				</tr>
				<tr class="odd-line">
					<td>
						Style path (getPath)
					</td>
					<td>
						<%= currentDesign.getCssPath() %>
					</td>
				</tr>
				<tr>
					<td>
						Style ID (getId)
					</td>
					<td>
						<%= currentDesign.getId()  %>
					</td>
				</tr>
			</table>
	        <td width="100%"><b>&nbsp;Current  Date 
				and time is:&nbsp; <font color="#FF0000">
				<%= new java.util.Date() %>
				</font></b></td>
		</body>
	</html>