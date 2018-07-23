require("minitest/autorun")
require("minitest/rg")

require_relative("../bank_account.rb")


class TestBankAccount < MiniTest::Test

  def setup()
    @account = BankAccount.new("Ally", 500, "Business")
  end

  def test_account_name()
    assert_equal("Ally", @account.holder_name())
  end

  def test_account_balance()
    assert_equal(500, @account.balance())
  end

  def test_account_type()
    assert_equal("Business", @account.type())
  end

  def test_change_account_name()
    @account.set_holder_name("Upul")
    assert_equal("Upul", @account.holder_name())
  end

  def test_change_balance()
    @account.set_balance(600)
    assert_equal(600, @account.balance())
  end

  def test_change_account_type()
    @account.set_type("Personal")
    assert_equal("Personal", @account.type())
  end

  def test_pay_into_account()
    @account.pay_in(1000)
    assert_equal(1500, @account.balance())
  end

  def test_monthly_fee_business()
    @account.pay_monthly_fee()
    assert_equal(450, @account.balance())
  end

  def test_monthly_fee_personal()
    personal_account = BankAccount.new("Alan", 20, "Personal")
    #only using personal_account in one test so don't need @
    personal_account.pay_monthly_fee()
    assert_equal(20, personal_account.balance())
  end

end
