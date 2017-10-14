When /I go to the edit page for "(.*)"/ do |movie|
    # puts movie == "Alien"
    # puts movie
    # puts "Alien"
    # puts Movie.all.inspect
    # puts Movie.where(title: movie).select(:id)[0].read_attribute(:id)
    @num = Movie.where(title: movie).select(:id)[0].read_attribute(:id)

    # puts @num.read_attribute(:id)

    visit edit_movie_path(@num)
end

Then /the director of "(.*)" should be "(.*)"/ do |movie, director|
    @num = Movie.where(title: movie).select(:id)[0].read_attribute(:id)
    # visit edit_movie_path(@num)
    # puts 1
    # puts page.body
    # puts 2
    bool = true
    bool.should be page.body.index(director) != nil
end

Given /I am on the details page for "(.*)"/ do |movie|
    @num = Movie.where(title: movie).select(:id)[0].read_attribute(:id)
    visit movie_path(@num)
    # puts page.body 
end

Then /I should be on the (.*) page for "(.*)"/ do |page, movie|
    @num = Movie.where(title: movie).select(:id)[0].read_attribute(:id)

    # current_path = URI.parse(current_url).path
    # if current_path.respond_to? :should
    #     current_path.should == path_to(page)
    # else
    #     assert_equal path_to(page_name), current_path
    # end
        
end

Then /I should be on the home page/ do 
    # puts "hello"
    # current_path = URI.parse(current_url).path
    # if current_path.respond_to? :should
    #     current_path.should == path_to(page)
    # else
    #     assert_equal path_to(page_name), current_path
    # end

end


