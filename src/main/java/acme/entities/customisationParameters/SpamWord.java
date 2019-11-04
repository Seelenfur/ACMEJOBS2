
package acme.entities.customisationParameters;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Transient;
import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Range;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class SpamWord extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	@Column(unique = true)
	private String				word;

	@Range(min = 0, max = 100)
	private Float				wordThreshold;


	@Transient
	public Float getThreshold() {
		if (this.wordThreshold == null) {
			return 1.0f;
		}
		return this.wordThreshold;
	}
}
