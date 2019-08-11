require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    student_hash = []
    html =Nokogir::HTML(open(index_url))
    html.css(".student-card").collect do |student|
        hash = { name: studnet.css("h4.student-name").text, 
        location: student.css("p.student-location").text,
        profile_url: "http://students.learn.co/" + student.csss("a").attritube("href)"}
        
        student_hash << hash
  end
  student_hash
end 


  def self.scrape_profile_page(profile_url)
    student_hash = {}
    
    html = Nokogiri::HTML(open(profile_url))
    html.css("div.social-icon-controller a").each do |student|
      
        url = student.attribute("href")
        student_has[:twitter_url] = url if url.include?("twitter")
        
        student_hash[:linkedin_url] =
    
  end

end

