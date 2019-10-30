
package acme.features.authenticated.announcement;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.announcements.Announcement;

public class AuthenticatedAnnouncementRepository extends AbstractRepository {

	@Query("select a from Announcement a where a.id = ?1")
	Announcement findOneById(int id);

	@Query("select a from Announcement a")
	Collection<Announcement> findManyAll();

}
