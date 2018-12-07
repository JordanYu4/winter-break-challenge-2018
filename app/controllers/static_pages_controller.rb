class StaticPagesController < ApplicationController
   def home
      @totalCount = Comment.count
      one = Comment.where(:team => "A2F").all
      two = Comment.where(:team => "Klesis").all
      three = Comment.where(:team => "MakeNew").all
   	@oneSum = 0;
   	@twoSum = 0;
	@threeSum = 0;

   	one.each do |post|
   		@oneSum += post.mission.points + comments.media_point
   	end

    two.each do |post|
        @twoSum += post.mission.points  + comments.media_point
    end

    three.each do |post|
        @threeSum += post.mission.points  + comments.media_point
    end


      @points = [['A2F', @oneSum], ['Klesis', @twoSum], ['MakeNew', @threeSum]].sort do |a, b|
         b[1] <=> a[1]
      end

      @winner = @points.delete_at(0)

   	@comment = Comment.new

      @sg = Mission.where(:category_id => Category.where(:mission_type => "Spiritual Growth").first.id)
      @evangelism = Mission.where(:category_id => Category.where(:mission_type => "Evangelism").first.id)
      @ser = Mission.where(:category_id => Category.where(:mission_type => "Service/Gratitude").first.id)
      @eq = Mission.where(:category_id => Category.where(:mission_type => "Equipping").first.id)
   end

   def challenges
   	@sg = Mission.where(:category_id => Category.where(:mission_type => "Spiritual Growth").first.id)
   	@evangelism = Mission.where(:category_id => Category.where(:mission_type => "Evangelism").first.id)
   	@service = Mission.where(:category_id => Category.where(:mission_type => "Service/Gratitude").first.id)
   	@equip = Mission.where(:category_id => Category.where(:mission_type => "Equipping").first.id)
   end

   def stats
      #@one = ['Kevan', 'Jon Kim', 'Will', 'Alex', 'Josh Joo', 'Kevin Stock', 'Daniel Liu', 'Godwin Law', 'Jonathan Chen']
      #@two = ['Jenny', 'Kat Kim', 'Alex', 'Adeline', 'Huizhen', 'Dasol', 'Vivian L', 'Jennifer Li', 'Stella Oh', 'Michelle Kim', 'Vanessa', 'Mira Chiu', 'Katherine Cai']
      #@three = ['Joe', 'Brian Jue', 'Ivan Yung', 'Jeff W', 'Nathan M', 'Andrew N.', 'Josh Kim', 'David Lee', 'Daniel Shan', 'Matt Estrada', 'Ben VDH', 'Noah Kang']
      #@four = ['Irene', 'Ellen Jue', 'San Yung', 'Joyce Cho', 'Joyce Han', 'Nancy P.', 'Claire Lee', 'Kristy J', 'Grace Park', 'Yvonne W', 'Micaela W']

      @totalCount = Comment.count
      one = Comment.where(:team => "A2F").all
      two = Comment.where(:team => "Klesis").all
      three = Comment.where(:team => "MakeNew").all
      @oneSum = 0;
      @twoSum = 0;
      @threeSum = 0;


      one.each do |post|
         @oneSum += post.mission.points + comments.media_point
      end

      two.each do |post|
         @twoSum += post.mission.points + comments.media_point
      end

      three.each do |post|
         @threeSum += post.mission.points + comments.media_point
      end


      @points = [['A2F', @oneSum], ['Klesis', @twoSum], ['MakeNew', @threeSum]].sort do |a, b|
         b[1] <=> a[1]
      end

      # @points = [[team, pointSum],...]

      @winner = @points.delete_at(0)

   end

   def completed
      @comments = Comment.page(params[:page]).order('created_at DESC')
   end 

   def powerranking
      names = Comment.uniq.pluck(:name)
   end

end
