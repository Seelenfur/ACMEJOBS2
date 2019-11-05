
package acme.features.anonymous.topInvestors;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.investor.Investor;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AnonymousTopInvestorsRepository extends AbstractRepository {

	@Query("select a from Investor a where a.id = ?1")
	Investor findOneById(int id);

	@Query("select a from Investor a where a.starNumber = 5")
	Collection<Investor> findManyAll();

}
