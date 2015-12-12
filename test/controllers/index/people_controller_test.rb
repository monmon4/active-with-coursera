require 'test_helper'

class Index::PeopleControllerTest < ActionController::TestCase
  setup do
    @index_person = index_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:index_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create index_person" do
    assert_difference('Index::Person.count') do
      post :create, index_person: { age: @index_person.age, name: @index_person.name }
    end

    assert_redirected_to index_person_path(assigns(:index_person))
  end

  test "should show index_person" do
    get :show, id: @index_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @index_person
    assert_response :success
  end

  test "should update index_person" do
    patch :update, id: @index_person, index_person: { age: @index_person.age, name: @index_person.name }
    assert_redirected_to index_person_path(assigns(:index_person))
  end

  test "should destroy index_person" do
    assert_difference('Index::Person.count', -1) do
      delete :destroy, id: @index_person
    end

    assert_redirected_to index_people_path
  end
end
