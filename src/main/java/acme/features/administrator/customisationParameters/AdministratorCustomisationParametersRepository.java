
package acme.features.administrator.customisationParameters;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.customisationParameters.SpamWord;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AdministratorCustomisationParametersRepository extends AbstractRepository {

	@Query("select w from SpamWord w")
	Collection<SpamWord> findManyAll();

}
