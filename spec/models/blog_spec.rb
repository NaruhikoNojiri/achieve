require ('rails_helper')

describe Blog do

  # it is valid when it has title and content.
  it "is valid with title and content" do
    blog = Blog.new(title:'野尻', content:'暑いです')
    expect(blog).to(be_valid)
  end

  # it is invalid when it has no title.
  it "is invalid without a title" do
    blog = Blog.new
    expect(blog).not_to(be_valid)
  end

  # it is valid when it has title and content.
  it "is valid with title" do
    blog = Blog.new
    blog.valid?
    expect(blog.errors[:title]).to(include("を入力してください"))
  end
 end
