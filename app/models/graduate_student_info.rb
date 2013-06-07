class GraduateStudentInfo < ActiveRecord::Base
#before_validation :cohort_conversion
#after_create :cohort_conversion
#before_save :cohort_conversion
before_create :cohort_conversion#, :cohort_combine
attr_accessible :UID, :last_name, :first_name, :email, :degree, :gender, :international, :cohort, :start_date, :must_achieve_cand_by, :candidacy, :candidacy_expires, :cand_ext_count, :must_defend_prospectus_by, :prospectus, :prosp_ext_count, :dissertation_submitted, :leave_of_absence_start_date, :dropped_down_to_MS, :withdrawn_date, :notes
validates :UID, :last_name, :first_name, :degree, :gender, :international, :cohort, :must_achieve_cand_by, :must_defend_prospectus_by, presence: true
validates :UID, uniqueness: true, format: {
	with: /([a-zA-Z][\d]{8})\z/i,
	message: 'This is not an valid student ID'
}
validates :email, allow_blank: true, format: {
	with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
	message: 'This is not an valid email format.'
}
logger.info("I'm here..............................")
#validates_inclusion_of :degree, :in => %w( pb-phd-ee pm-phd-ee ),
#message: 'must be pb-phd-ee or pm-phd-ee'
#validates_inclusion_of :gender, :in => %w( m f ),
#message: 'must be m or f'
#validates_inclusion_of :international, :in => %w( y n ),
#message: 'must be y or n'

def cohort_conversion
	if cohort.length > 6
		year = cohort[cohort.length-4,4]
	end
	if cohort.include? "fall"
		# insert in year-09-01 (FALL start)
		temp = year.concat('-09-01')
		self.start_date = temp
	elsif cohort.include? "spr"
		# insert in year-01-15 (SPR start)
		temp = year.concat('-01-15')
		self.start_date = temp
	elsif cohort.include? "sum"
		# insert in year-08-15 (SUM end)

	end
end

#def cohort_combine
#	cohort_full = cohort_season+cohort_year	
#end

#def cohort_conversion
#	if cohort_full.length > 6
#		year = cohort_full[cohort_full.length-4,4]
#	end
#	if cohort_full.include? "fall"
#		# insert in year-09-01 (FALL start)
#		temp = year.concat('-09-01')
#		self.start_date = temp
#	elsif cohort_full.include? "spr"
#		# insert in year-01-15 (SPR start)
#		temp = year.concat('-01-15')
#		self.start_date = temp
#	elsif cohort_full.include? "sum"
#		# insert in year-08-15 (SUM end)
#
#	end
#end
	


#def expiration_date_cannot_be_in_the_past
#    if !expiration_date.blank? and expiration_date < Date.today
#      errors.add(:expiration_date, "can't be in the past")
#    end
#  end
 
#def discount_cannot_be_greater_than_total_value
#    if discount > total_value
#      errors.add(:discount, "can't be greater than total value")
#    end
#  end
end
