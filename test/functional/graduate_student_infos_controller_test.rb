require 'test_helper'

class GraduateStudentInfosControllerTest < ActionController::TestCase
  setup do
    @graduate_student_info = graduate_student_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graduate_student_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graduate_student_info" do
    assert_difference('GraduateStudentInfo.count') do
      post :create, graduate_student_info: { UID: @graduate_student_info.UID, cand_ext_count: @graduate_student_info.cand_ext_count, candidacy: @graduate_student_info.candidacy, candidacy_expires: @graduate_student_info.candidacy_expires, cohort: @graduate_student_info.cohort, degree: @graduate_student_info.degree, dissertation_submitted: @graduate_student_info.dissertation_submitted, dropped_down_to_MS: @graduate_student_info.dropped_down_to_MS, email: @graduate_student_info.email, first_name: @graduate_student_info.first_name, gender: @graduate_student_info.gender, international: @graduate_student_info.international, last_name: @graduate_student_info.last_name, leave_of_absence_start_date: @graduate_student_info.leave_of_absence_start_date, must_achieve_cand_by: @graduate_student_info.must_achieve_cand_by, must_defend_prospectus_by: @graduate_student_info.must_defend_prospectus_by, notes: @graduate_student_info.notes, prosp_ext_count: @graduate_student_info.prosp_ext_count, prospectus: @graduate_student_info.prospectus, start_date: @graduate_student_info.start_date, withdrawn_date: @graduate_student_info.withdrawn_date }
    end

    assert_redirected_to graduate_student_info_path(assigns(:graduate_student_info))
  end

  test "should show graduate_student_info" do
    get :show, id: @graduate_student_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graduate_student_info
    assert_response :success
  end

  test "should update graduate_student_info" do
    put :update, id: @graduate_student_info, graduate_student_info: { UID: @graduate_student_info.UID, cand_ext_count: @graduate_student_info.cand_ext_count, candidacy: @graduate_student_info.candidacy, candidacy_expires: @graduate_student_info.candidacy_expires, cohort: @graduate_student_info.cohort, degree: @graduate_student_info.degree, dissertation_submitted: @graduate_student_info.dissertation_submitted, dropped_down_to_MS: @graduate_student_info.dropped_down_to_MS, email: @graduate_student_info.email, first_name: @graduate_student_info.first_name, gender: @graduate_student_info.gender, international: @graduate_student_info.international, last_name: @graduate_student_info.last_name, leave_of_absence_start_date: @graduate_student_info.leave_of_absence_start_date, must_achieve_cand_by: @graduate_student_info.must_achieve_cand_by, must_defend_prospectus_by: @graduate_student_info.must_defend_prospectus_by, notes: @graduate_student_info.notes, prosp_ext_count: @graduate_student_info.prosp_ext_count, prospectus: @graduate_student_info.prospectus, start_date: @graduate_student_info.start_date, withdrawn_date: @graduate_student_info.withdrawn_date }
    assert_redirected_to graduate_student_info_path(assigns(:graduate_student_info))
  end

  test "should destroy graduate_student_info" do
    assert_difference('GraduateStudentInfo.count', -1) do
      delete :destroy, id: @graduate_student_info
    end

    assert_redirected_to graduate_student_infos_path
  end
end
