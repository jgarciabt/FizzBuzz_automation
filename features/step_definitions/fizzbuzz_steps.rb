require 'calabash-android/calabash_steps'

# Then (/^ $/) do
#
# end

Then (/^I introduce the number ([1234567890]*)$/) do |number|
  enter_text("android.widget.EditText id:'number_input'", number)
end

Then (/^I press the FizzBuzz button$/) do
  tap_when_element_exists("* id:'fizz_buzz_button'")
end

# Explain problems using class identifiers (TextView vs android.support.v7.widget.AppCompatTextView)
Then (/^I should see (.*)$/) do |expected_text|

  actualText = query("* id:'fizz_buzz_output'", :text).first
  unless expected_text == actualText
    fail "The result is incorrect. Expected '#{expected_text}', but got '#{actualText}'."
  end
end