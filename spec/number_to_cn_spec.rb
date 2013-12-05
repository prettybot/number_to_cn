#encoding:utf-8
require 'spec_helper'

describe NumberToCn do
  it "should go works" do
    (2203.to_cn_words).should eq("二千二百零三")
  end

  it "should go works for 2003" do
    (2003.to_cn_words).should eq("二千零三")
  end

  it "should go works for 20003" do
    (20003.to_cn_words).should eq("二万零三")
  end

  it "should go works for 200003" do
    (200003.to_cn_words).should eq("二十万零三")
  end

  it "worked for zero" do
    (0.to_cn_words).should eq("零")
  end

  it "worked for 0.0" do
    (0.0.to_cn_words).should eq("零点零")
  end

  it "worked for 0.003" do
    (0.003.to_cn_words).should eq("零点零零三")
  end

  it "worked for 0.0" do
    (0.02.to_cn_words).should eq("零点零二")
  end

  it "worked for float" do
    ((33.0).to_cn_words).should eq("三十三点零")
  end

  it "works in clear transfer" do
    (203.to_cn_clearly).should eq("二零三")
  end
end
