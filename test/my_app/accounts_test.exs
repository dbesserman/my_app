defmodule MyApp.AccountsTest do
  use MyApp.DataCase

  alias MyApp.Accounts

  describe "users" do
    import MyApp.AccountsFixtures

    test "get_user_from_genserver/1 returns the user with given id" do
      user = user_fixture()

      assert Accounts.get_user_from_genserver(user.id) == user
    end
  end
end
