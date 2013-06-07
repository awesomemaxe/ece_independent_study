class GraduateStudentInfo < ActiveRecord::Base
attr_accessible :UID, :last_name, :first_name, :email, :degree, :gender, :international, :cohort, :start_date, :must_achieve_cand_by, :candidacy, :candidacy_expires, :cand_ext_count, :must_defend_prospectus_by, :prospectus, :prosp_ext_count, :dissertation_submitted, :leave_of_absence_start_date, :dropped_down_to_MS, :withdrawn_date, :notes
validates :UID, :last_name, :first_name, :degree, :gender, :international, :cohort, :start_date, :must_achieve_cand_by, :must_defend_prospectus_by, presence: true
validates :UID, uniqueness: true, format: {
	with: /([a-zA-Z][\d]{8})\z/i,
	message: 'This is not an valid student ID'
}
validates :email, allow_blank: true, format: {
	with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
	message: 'This is not an valid email format.'
}
#validates_inclusion_of :degree, :in => %w( pb-phd-ee pm-phd-ee ),
#message: 'must be pb-phd-ee or pm-phd-ee'
#validates_inclusion_of :gender, :in => %w( m f ),
#message: 'must be m or f'
#validates_inclusion_of :international, :in => %w( y n ),
#message: 'must be y or n'
#

def expiration_date_cannot_be_in_the_past
    if !expiration_date.blank? and expiration_date < Date.today
      errors.add(:expiration_date, "can't be in the past")
    end
  end
 
def discount_cannot_be_greater_than_total_value
    if discount > total_value
      errors.add(:discount, "can't be greater than total value")
    end
  end
end
