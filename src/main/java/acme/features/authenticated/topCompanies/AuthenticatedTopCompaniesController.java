
package acme.features.authenticated.topCompanies;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.entities.company.Company;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;
import acme.framework.entities.Authenticated;

@Controller
@RequestMapping("/authenticated/top-companies/")
public class AuthenticatedTopCompaniesController extends AbstractController<Authenticated, Company> {

	@Autowired
	private AuthenticatedTopCompaniesListService	listService;
	@Autowired
	private AuthenticatedTopCompaniesShowService	showService;


	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.LIST, this.listService);
		super.addBasicCommand(BasicCommand.SHOW, this.showService);
	}

}
