
package acme.entities.company;

import javax.persistence.Entity;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.URL;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Company extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	private String				name;

	@NotBlank
	private String				sector;

	@NotBlank
	private String				ceo;

	@NotBlank
	private String				activities;

	@URL
	private String				website;

	@Pattern(regexp = "^([+][1-9][0-9]{0,2}[ ])?([(][1-9][0-9]{0,3}[)][ ])?[0-9]{6,10}$")
	private String				phone;

	@Email
	private String				email;

	private boolean				corporated;

	@Range(min = 0, max = 5)
	private Integer				stars;


	public String getCorporatedName() {
		return this.name + (this.corporated ? ", Inc." : ", LLC");
	}
}
