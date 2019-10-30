
<%--
- list.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list>
	<acme:list-column code="authenticated.company.list.label.name" path="name" width="20%" />
	<acme:list-column code="authenticated.company.list.label.website" path="website" width="30%" />
	<acme:list-column code="authenticated.company.list.label.phone" path="phone" width="25%" />
	<acme:list-column code="authenticated.company.list.label.email" path="email" width="25%" />
</acme:list>


