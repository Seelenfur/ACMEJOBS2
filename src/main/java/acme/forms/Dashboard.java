
package acme.forms;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Dashboard implements Serializable {

	private static final long	serialVersionUID	= 1L;

	// Attributes

	Integer						totalNumberOfAnnouncements;
	Integer						totalNumberOfCompanyRecords;
	Integer						totalNumberOfInvestorRecords;

	Double						maxRewardOfActiveRequests;
	Double						minRewardOfActiveRequests;
	Double						avgRewardOfActiveRequests;
	Double						standardDeviationRewardOfActiveRequests;

	Double						maxRewardOfActiveOffers;
	Double						minRewardOfActiveOffers;
	Double						avgRewardOfActiveOffers;
	Double						standardDeviationRewardOfActiveOffers;
}
