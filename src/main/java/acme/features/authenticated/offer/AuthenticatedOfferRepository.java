
package acme.features.authenticated.offer;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.company.Company;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedOfferRepository extends AbstractRepository {

	@Query("select c from Company c where c.id = ?1")
	Company findOneById(int id);

	@Query("select c from Company c")
	Collection<Company> findManyAll();
}
