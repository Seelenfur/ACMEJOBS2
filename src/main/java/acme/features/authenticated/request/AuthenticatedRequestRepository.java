
package acme.features.authenticated.request;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.requests.Request;
import acme.framework.repositories.AbstractRepository;

public class AuthenticatedRequestRepository extends AbstractRepository {

	@Query("select r from Request r where r.id = ?1")
	Request findOneById(int id);

	@Query("select r from Request r where r.deadline > current_date()")
	Collection<Request> findManyAll();

}
