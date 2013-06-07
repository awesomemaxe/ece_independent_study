class CreateGraduateStudentInfos < ActiveRecord::Migration
  def change
    create_table :graduate_student_infos do |t|
      t.string :UID
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :degree
      t.string :gender
      t.string :international
      t.string :cohort
      t.date :start_date
      t.date :must_achieve_cand_by
      t.date :candidacy
      t.date :candidacy_expires
      t.integer :cand_ext_count
      t.date :must_defend_prospectus_by
      t.date :prospectus
      t.integer :prosp_ext_count
      t.date :dissertation_submitted
      t.date :leave_of_absence_start_date
      t.date :dropped_down_to_MS
      t.date :withdrawn_date
      t.string :notes

      t.timestamps
    end
  end
end
