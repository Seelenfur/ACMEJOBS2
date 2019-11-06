<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">

	<acme:form-panel code="administrator.customisation-parameters.form.label.spamTitle">
		<acme:form-textarea code="administrator.customisation-parameters.form.label.spamWords" path="spamWords"/>
		<acme:form-textbox code="administrator.customisation-parameters.form.label.spamThreshold" path="spamThreshold"/>
	</acme:form-panel>

</acme:form>