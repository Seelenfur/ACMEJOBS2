<%--
- menu.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper,acme.entities.roles.Provider,acme.entities.roles.Consumer"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.list-announcement" action="/anonymous/announcement/list" />
			<acme:menu-suboption code="master.menu.list-top-investors" action="/anonymous/top-investors/list" />
			<acme:menu-suboption code="master.menu.list-investor" action="/anonymous/investor/list" />
			<acme:menu-suboption code="master.menu.list-top-companies" action="/anonymous/top-companies/list" />
			<acme:menu-suboption code="master.menu.list-company" action="/anonymous/company/list" />

			<acme:menu-separator />

			<acme:menu-suboption code="master.menu.anonymous.list-shout" action="/anonymous/shout/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-shout" action="/anonymous/shout/create" />

			<acme:menu-separator />

			<acme:menu-suboption code="master.menu.anonymous.favourite-link-1" action="http://www.instagram.com/" />
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-2" action="http://www.twitter.com/" />
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-3" action="http://www.youtube.com/" />
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-4" action="http://www.twitch.com/" />

			<acme:menu-separator />

			<acme:menu-suboption code="master.menu.anonymous.list-bulletin-1" action="/anonymous/caceres-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-bulletin-1" action="/anonymous/caceres-bulletin/create" />

			<acme:menu-separator />

			<acme:menu-suboption code="master.menu.anonymous.list-bulletin-2" action="/anonymous/gonzalez-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-bulletin-2" action="/anonymous/gonzalez-bulletin/create" />

			<acme:menu-separator />

			<acme:menu-suboption code="master.menu.anonymous.list-bulletin-3" action="/anonymous/marin-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-bulletin-3" action="/anonymous/marin-bulletin/create" />

			<acme:menu-separator />

			<acme:menu-suboption code="master.menu.anonymous.list-bulletin-4" action="/anonymous/sanchez-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-bulletin-4" action="/anonymous/sanchez-bulletin/create" />

		</acme:menu-option>

		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.list-announcement" action="/administrator/announcement/list" />
			<acme:menu-separator />
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list" />
			<acme:menu-separator />
			<acme:menu-suboption code="master.menu.administrator.shutdown" action="/master/shutdown" />
			<acme:menu-separator />
			<acme:menu-suboption code="master.menu.administrator.dashboard.listing" action="/administrator/dashboard/listing" />
			<acme:menu-suboption code="master.menu.administrator.chart" action="/administrator/chart/chart" />
			<acme:menu-suboption code="master.menu.administrator.show-customisation-parameters"
				action="/administrator/customisation-parameters/show" />
		</acme:menu-option>

		<acme:menu-option code="master.menu.provider" access="hasRole('Provider')">
			<acme:menu-suboption code="master.menu.provider.favourite-link" action="http://www.example.com/" />
		</acme:menu-option>

		<acme:menu-option code="master.menu.consumer" access="hasRole('Consumer')">
			<acme:menu-suboption code="master.menu.consumer.favourite-link" action="http://www.example.com/" />
		</acme:menu-option>
	</acme:menu-left>

	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()" />
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()" />

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">

			<acme:menu-suboption code="master.menu.list-announcement" action="/authenticated/announcement/list" />
			<acme:menu-suboption code="master.menu.list-top-investors" action="/authenticated/top-investors/list" />
			<acme:menu-suboption code="master.menu.list-investor" action="/authenticated/investor/list" />
			<acme:menu-suboption code="master.menu.list-top-companies" action="/authenticated/top-companies/list" />
			<acme:menu-suboption code="master.menu.list-company" action="/authenticated/company/list" />
			<acme:menu-suboption code="master.menu.list-req" action="/authenticated/request/list" />
			<acme:menu-suboption code="master.menu.list-challenge" action="/authenticated/challenge/list" />
			<acme:menu-suboption code="master.menu.list-offer" action="/authenticated/offer/list" />

			<acme:menu-separator />


			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update" />
			<acme:menu-suboption code="master.menu.user-account.become-provider" action="/authenticated/provider/create"
				access="!hasRole('Provider')" />
			<acme:menu-suboption code="master.menu.user-account.provider" action="/authenticated/provider/update"
				access="hasRole('Provider')" />
			<acme:menu-suboption code="master.menu.user-account.become-consumer" action="/authenticated/consumer/create"
				access="!hasRole('Consumer')" />
			<acme:menu-suboption code="master.menu.user-account.consumer" action="/authenticated/consumer/update"
				access="hasRole('Consumer')" />
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()" />
	</acme:menu-right>
</acme:menu-bar>