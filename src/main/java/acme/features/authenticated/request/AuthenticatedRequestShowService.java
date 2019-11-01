
package acme.features.authenticated.request;

import org.springframework.beans.factory.annotation.Autowired;

import acme.entities.requests.Request;
import acme.framework.components.Model;
import acme.framework.entities.Authenticated;
import acme.framework.services.AbstractShowService;

public class AuthenticatedRequestShowService implements AbstractShowService<Authenticated, Request> {

	//Internal state ------------------------------------------------------------

	@Autowired
	AuthenticatedRequestRepository repository;


	//AbstractShowService<Authenticated, Request> interface -----------------------

	@Override
	public boolean authorise(final Request<Request> request) {
		assert request != null;
		return true;
	}

	@Override
	public void unbind(final Request<Request> request, final Request entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;
		request.unbind(entity, model, "title", "creationMoment", "deadline", "text", "reward", "ticker");
	}

	@Override
	public Request findOne(final Request<Request> request) {
		assert request != null;
		Request result;
		int id;
		id = request.getModel().getInteger("id");
		result = this.repository.findOneById(id);
		return result;
	}

}
