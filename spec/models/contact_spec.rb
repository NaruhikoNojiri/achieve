require ('rails_helper')

describe Contact do

  # 名前、メールアドレス、内容がある場合は有効.
  it "is valid with name, email and content" do
    contact = Contact.new(name:'野尻', email:'test@test.com', content:'テストですぜ。')
    expect(contact).to(be_valid)
  end

  # 名前がない場合は無効.
  it "is invalid without name" do
    contact = Contact.new(email:'test@test.com', content:'テストですぜ。')
    expect(contact).to(be_invalid)
  end

  # メールアドレスがない場合は無効.
  it "is invalid without email" do
    contact = Contact.new(name:'野尻', content:'テストですぜ。')
    expect(contact).to(be_invalid)
  end

  # 内容がない場合は無効.
  it "is invalid without content" do
    contact = Contact.new(name:'野尻', email:'test@test.com')
    expect(contact).to(be_invalid)
  end

 end
