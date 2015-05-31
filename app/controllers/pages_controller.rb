class PagesController < ApplicationController

  before_action do
    @posts = [
      Post.new("SO FANTASTIC, SUCH ENGAGING", "bg-header.jpg", "This is content for SO FANTASTIC, SUCH ENGAGING. BLAH BLAH BLAH. Bacon ipsum dolor amet capicola bresaola cupim filet mignon. Picanha alcatra pancetta, pork loin landjaeger turducken sirloin. Shoulder andouille hamburger, chuck biltong brisket ground round jowl. Picanha chuck t-bone andouille turducken fatback tail salami tenderloin bacon sirloin porchetta. Meatloaf turkey prosciutto hamburger t-bone jowl tri-tip andouille. Leberkas kevin pastrami, sausage hamburger meatball chuck jerky ham hock biltong rump picanha fatback."),

      Post.new("ANOTHER COOL POST", "another-cool-post.jpg", "This is content for ANOTHER COOL POST. BLAH BLAH BLAH. Tail shank jerky, porchetta jowl shoulder frankfurter turkey biltong beef ribs. Leberkas meatball pork belly chicken jowl cow shank fatback shoulder swine capicola. Cupim tail pork belly short ribs shank. Pork loin doner hamburger meatball, shoulder short loin sausage."),

      Post.new("POST TITLE", "post-title.jpg", "This is content for POST TITLE. BLAH BLAH BLAH. Short loin cupim andouille meatball. Ground round chuck venison ham pig kielbasa pancetta. Fatback drumstick pork ham hock pork chop turkey swine ball tip. Ham leberkas pork cupim hamburger, spare ribs sirloin tail venison sausage alcatra ball tip filet mignon brisket. Tail corned beef fatback t-bone pork loin short ribs shankle shank. Picanha tri-tip turducken, andouille alcatra cow ball tip."),

      Post.new("HERE'S ANOTHER LONGER POST TITLE", "here-s-another-longer-post-title.jpg", "This is content for HERE'S ANOTHER LONGER POST TITLE. BLAH BLAH BLAH. Capicola spare ribs landjaeger alcatra t-bone, brisket leberkas strip steak prosciutto cow shoulder ham hock salami. Landjaeger chuck filet mignon doner tongue t-bone. Cow ribeye spare ribs flank drumstick swine shoulder porchetta jerky sausage prosciutto kielbasa kevin beef capicola. Beef ribs bresaola filet mignon, pork chop andouille shankle shank cupim spare ribs ball tip."),

      Post.new("OH COOL A POST", "oh-cool-a-post.jpg", "This is content for OH COOL A POST. BLAH BLAH BLAH. Drumstick tongue biltong sausage ham beef ribeye jerky t-bone brisket kevin ball tip meatball cupim shankle. T-bone doner kielbasa beef ribs kevin. Shoulder doner leberkas, cupim pancetta rump drumstick. Brisket biltong turducken, ribeye chuck landjaeger spare ribs corned beef shank venison.")
      ]
  end

  def newest_post
    @title = @posts.first.title
    @content = @posts.first.content
  end

  def post
    current_post = @posts.find do |post|
      post if post.title.parameterize == params[:post_title].parameterize
    end
    @title = current_post.title
    @content = current_post.content
  end

end
