require "test_helper"

describe Work do
  let(:work) { Work.new(title: "Title", category: "book") }

  it "must be valid" do
    value(work).must_be :valid?
  end

  it "must not be valid when work has no title" do
    work.title = nil
    value(work).wont_be :valid?
  end

  it "must not be valid when work has empty title" do
    work.title = " "
    value(work).wont_be :valid?
  end

  it "must not have a nil title" do
    work.title = nil
    value(work).wont_be :valid?
  end

  it "only allows unique titles per category" do
    work.save
    another_work = Work.new(title: "Title", category: "book")

    value(another_work).wont_be :valid?
  end





end
