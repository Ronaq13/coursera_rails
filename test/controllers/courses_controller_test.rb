require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { banner_image: @course.banner_image, category: @course.category, expected_duration: @course.expected_duration, faq: @course.faq, homepage: @course.homepage, image: @course.image, key: @course.key, level: @course.level, required_knowledge: @course.required_knowledge, short_summay: @course.short_summay, subtitle: @course.subtitle, summary: @course.summary, syllabus: @course.syllabus, teaser_video: @course.teaser_video, title: @course.title }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { banner_image: @course.banner_image, category: @course.category, expected_duration: @course.expected_duration, faq: @course.faq, homepage: @course.homepage, image: @course.image, key: @course.key, level: @course.level, required_knowledge: @course.required_knowledge, short_summay: @course.short_summay, subtitle: @course.subtitle, summary: @course.summary, syllabus: @course.syllabus, teaser_video: @course.teaser_video, title: @course.title }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
