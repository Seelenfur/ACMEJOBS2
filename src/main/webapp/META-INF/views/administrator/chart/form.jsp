<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<h2>
	<acme:message code="administrator.chart.form.title.totalSectors"/>
</h2>

<div>
	<canvas id="canvas"></canvas>
</div>

<script type="text/javascript">
	$(document).ready(function(){
		var data = {
			labels : [<jstl:forEach 
			    		var="i" 
			        	items="${investorSector}">
			       		"<jstl:out value='${i}'/>",
			   		 </jstl:forEach>
				],
			datasets : [
				{
					backgroundColor:"rgba(74, 189, 172, 0.7)",
					label:"<acme:message code='administrator.chart.form.label.investor'/>",
					data :[<jstl:forEach 
				    	var="i" 
				        items="${totalNumberOfInvestorsBySector}">
				        <jstl:out value="${i}"/>,
				    	</jstl:forEach>
				 	]
				},
				{
					backgroundColor:"rgba(247, 183, 51, 0.7)",
					label:"<acme:message code='administrator.chart.form.label.companies'/>",
					data :[<jstl:forEach 
			    		var="i" 
			       		items="${totalNumberOfCompaniesBySector}">
			       		<jstl:out value="${i}"/>,
			    		</jstl:forEach>
			 		]
				}
			]
		};
		var options = {
			scales : {
				yAxes : [
					{
						ticks : {
							suggestedMin : 0.0,
							suggestedMax : 1.0
						}
					}
				]
			},
			legend : {
				display: true
			}
		};
	
		var canvas, context;
		canvas=document.getElementById("canvas");
		context=canvas.getContext("2d");
		new Chart( context, {
			type : "bar",
			data : data,
			options : options
		});
	});
	
</script>