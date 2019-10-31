<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="authenticated.offer.form.label.title" path="title"/>
	<acme:form-textbox code="authenticated.offer.form.label.moment" path="moment"/>
	<acme:form-textbox code="authenticated.offer.form.label.deadline" path="deadline"/>
	<acme:form-textarea code="authenticated.offer.form.label.description" path="description"/>
	<acme:form-textbox code="authenticated.offer.form.label.minMoney" path="minMoney"/>
	<acme:form-textbox code="authenticated.offer.form.label.maxMoney" path="maxMoney"/>
	
	<acme:form-return code="authenticated.offer.form.button.return"/>
</acme:form>