
package acme.features.administrator.customisationParameters;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.customisationParameters.SpamWord;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractListService;

@Service
public class AdministratorCustomisationParametersListService implements AbstractListService<Administrator, SpamWord> {

	@Autowired
	AdministratorCustomisationParametersRepository repository;


	@Override
	public boolean authorise(final Request<SpamWord> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<SpamWord> request, final SpamWord entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "word", "threshold");
	}

	@Override
	public Collection<SpamWord> findMany(final Request<SpamWord> request) {
		assert request != null;

		Collection<SpamWord> result;
		result = this.repository.findManyAll();

		return result;
	}

}
