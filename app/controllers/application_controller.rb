class ApplicationController < ActionController::Base

def blank_square_form
  render({ :template => "calculation_templates/square_form.html.erb"})
end

def calculate_square
  @num = params.fetch("elephant").to_f
  @square_of_num = @num ** 2
  render({ :template => "calculation_templates/square_results.html.erb"})
end

def random_form
  render({ :template => "calculation_templates/rand_form.html.erb"})
end

def calculate_random
  @lower = params.fetch("minimum").to_f
  @upper = params.fetch("maximum").to_f
  @result = rand(@lower..@upper)
  render({ :template => "calculation_templates/rand_results.html.erb"})
end

def square_root_form
  render({ :template => "calculation_templates/square_root_form.html.erb"})
end

def calculate_square_root
  @num = params.fetch("number").to_f
  @square_root_num = @num ** 0.5
  render({ :template => "calculation_templates/square_root_results.html.erb"})
end

def payment_form
  render({ :template => "calculation_templates/payment_form.html.erb"})
end

def calculate_payment
  @apr = params.fetch("apr").to_f
  @years = params.fetch("years").to_i
  @principal = params.fetch("principal").to_f
  @result = ((@principal * ((1+(@apr/100))**(@years)))/(@years*12))
  render({ :template => "calculation_templates/payment_results.html.erb"})
end

end
