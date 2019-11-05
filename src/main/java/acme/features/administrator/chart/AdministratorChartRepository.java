
package acme.features.administrator.chart;

import org.springframework.data.jpa.repository.Query;

import acme.framework.repositories.AbstractRepository;

public interface AdministratorChartRepository extends AbstractRepository {

	@Query("select count(c) FROM Company c group by c.sector")
	Object[] findTotalNumberOfCompaniesBySector();

	@Query("select count(i) FROM Investor i group by i.sector")
	Object[] findTotalNumberOfInvestorsBySector();

	@Query("select c.sector FROM Company c group by c.sector")
	Object[] findCompanySector();

	@Query("select i.sector FROM Investor i group by i.sector")
	Object[] findInvestorSector();

}
