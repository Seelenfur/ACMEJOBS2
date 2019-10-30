
package acme.features.authenticated.company;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.offer.Offer;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedCompanyRepository extends AbstractRepository {

	@Query("select c from Company c where c.id = ?1")
	Offer findOneById(int id);

	@Query("select c from Company c")
	Collection<Offer> findManyAll();
}
