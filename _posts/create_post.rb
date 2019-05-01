puts "Enter post title:"
STDOUT.flush
title = gets.chomp
puts "Creating post titled #{title} in _posts"
# convert string to lowercase and replace spaces with hyphens
# titlef = #{title}.downcase.tr(" ", "-")
datef = Time.now.strftime('%Y-%m-%d')

File.open("#{datef}-#{title}.md", 'w') { |d| 
    d << "---\n"
    d << "layout: post\n"
    d << "title: #{title}\n"
    d << "date: #{datef}\n"
    d << "---\n"
    d << "Write content here"
}
