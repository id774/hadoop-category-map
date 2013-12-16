#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'rubygems'
require 'rspec'
require 'json'

class Reducer
  def self.run
    `cat data/* | ruby lib/mapper.rb | sort | ruby lib/reducer.rb`
  end
end

describe Reducer do
  subject { Reducer.run }
  let(:expected) { "Azure\t1\t0\t0\t0\t0\t1\t0\t0\t0\nDeck\t1\t0\t0\t0\t0\t1\t0\t0\t0\nEvernote\t1\t0\t0\t0\t0\t1\t0\t0\t0\nInfinity\t1\t0\t0\t1\t0\t0\t0\t0\t0\nMARU\t1\t0\t0\t0\t0\t1\t0\t0\t0\nMSN\t2\t0\t0\t1\t0\t0\t0\t1\t0\nMaltine\t1\t0\t0\t0\t0\t1\t0\t0\t0\nPocket\t1\t0\t0\t0\t0\t1\t0\t0\t0\nRecords\t1\t0\t0\t0\t0\t1\t0\t0\t0\nSLICE\t1\t0\t0\t0\t0\t1\t0\t0\t0\nSpeaker\t1\t0\t0\t0\t0\t1\t0\t0\t0\nWEDGE\t1\t0\t0\t1\t0\t0\t0\t0\t0\nYAMADAtheGIANT\t1\t0\t0\t0\t0\t0\t0\t1\t0\ncom\t1\t0\t0\t0\t0\t0\t0\t1\t0\nmachine\t1\t0\t0\t0\t0\t1\t0\t0\t0\npale\t1\t0\t0\t0\t0\t1\t0\t0\t0\nusers\t20\t0\t0\t3\t0\t10\t1\t5\t0\n引退\t1\t0\t0\t0\t0\t0\t0\t1\t0\n化粧\t1\t0\t0\t0\t0\t0\t0\t1\t0\n科\t1\t0\t0\t0\t0\t0\t0\t1\t0\n過激\t1\t0\t0\t1\t0\t0\t0\t0\t0\n会見\t1\t0\t0\t0\t0\t0\t0\t1\t0\n海外\t1\t0\t0\t1\t0\t0\t0\t0\t0\n柿谷\t1\t0\t0\t0\t0\t0\t1\t0\t0\n学会\t1\t0\t0\t0\t0\t0\t0\t1\t0\n活用\t2\t0\t0\t0\t0\t2\t0\t0\t0\n監督\t1\t0\t0\t0\t0\t0\t0\t1\t0\n緩和\t1\t0\t0\t0\t0\t0\t0\t0\t0\n艦\t1\t0\t0\t0\t0\t1\t0\t0\t0\n艦隊\t1\t0\t0\t0\t0\t1\t0\t0\t0\n関連\t1\t0\t0\t0\t0\t0\t1\t0\t0\n宮崎\t1\t0\t0\t0\t0\t0\t0\t1\t0\n緊急\t1\t0\t0\t0\t0\t0\t0\t1\t0\n金融\t1\t0\t0\t0\t0\t0\t0\t0\t0\n圭\t1\t0\t0\t0\t0\t0\t1\t0\t0\n月\t1\t0\t0\t1\t0\t0\t0\t0\t0\n検証\t1\t0\t0\t0\t0\t0\t0\t0\t0\n謙介\t1\t0\t0\t0\t0\t1\t0\t0\t0\n原因\t1\t0\t0\t1\t0\t0\t0\t0\t0\n顧客\t1\t0\t0\t0\t0\t1\t0\t0\t0\n光景\t1\t0\t0\t0\t0\t1\t0\t0\t0\n黒田\t1\t0\t0\t0\t0\t0\t0\t0\t0\n今回\t1\t0\t0\t0\t0\t0\t0\t1\t0\n産\t1\t0\t0\t0\t0\t0\t0\t1\t0\n産経\t1\t0\t0\t1\t0\t0\t0\t0\t0\n仕組み\t1\t0\t0\t0\t0\t1\t0\t0\t0\n氏\t1\t0\t0\t0\t0\t1\t0\t0\t0\n事件\t1\t0\t0\t1\t0\t0\t0\t0\t0\n時\t2\t0\t0\t0\t0\t1\t0\t1\t0\n時代\t1\t0\t0\t0\t0\t0\t0\t1\t0\n次元\t1\t0\t0\t0\t0\t0\t0\t0\t0\n自動\t1\t0\t0\t0\t0\t1\t0\t0\t0\n写真\t1\t0\t0\t0\t0\t1\t0\t0\t0\n社会\t1\t0\t0\t0\t0\t0\t0\t1\t0\n週刊\t1\t0\t0\t1\t0\t0\t0\t0\t0\n集団\t1\t0\t0\t1\t0\t0\t0\t0\t0\n駿\t1\t0\t0\t0\t0\t0\t0\t1\t0\n人\t2\t0\t0\t0\t0\t1\t0\t0\t0\n政権\t1\t0\t0\t1\t0\t0\t0\t0\t0\n正確\t1\t0\t0\t0\t0\t1\t0\t0\t0\n絶賛\t1\t0\t0\t0\t0\t0\t1\t0\t0\n泉\t1\t0\t0\t0\t0\t1\t0\t0\t0\n全て\t1\t0\t0\t0\t0\t0\t1\t0\t0\n総裁\t1\t0\t0\t0\t0\t0\t0\t0\t0\n脱出\t1\t0\t0\t1\t0\t0\t0\t0\t0\n男子\t1\t0\t0\t0\t0\t0\t0\t1\t0\n地区\t1\t0\t0\t1\t0\t0\t0\t0\t0\n中心\t1\t0\t0\t1\t0\t0\t0\t0\t0\n朝日新聞\t1\t0\t0\t0\t0\t0\t0\t1\t0\n調査\t1\t0\t0\t0\t0\t0\t0\t1\t0\n長編\t1\t0\t0\t0\t0\t0\t0\t1\t0\n提督\t1\t0\t0\t0\t0\t1\t0\t0\t0\n田中\t1\t0\t0\t0\t0\t1\t0\t0\t0\n動画\t1\t0\t0\t0\t0\t1\t0\t0\t0\n日\t1\t0\t0\t1\t0\t0\t0\t0\t0\n日記\t1\t0\t0\t0\t0\t0\t0\t0\t0\n日銀\t1\t0\t0\t0\t0\t0\t0\t0\t0\n日本語\t1\t0\t0\t0\t0\t1\t0\t0\t0\n年\t1\t0\t0\t1\t0\t0\t0\t0\t0\n白\t1\t0\t0\t0\t0\t0\t0\t1\t0\n皮膚\t1\t0\t0\t0\t0\t0\t0\t1\t0\n被害\t1\t0\t0\t0\t0\t0\t0\t1\t0\n美\t1\t0\t0\t0\t0\t0\t0\t1\t0\n品\t1\t0\t0\t0\t0\t0\t0\t1\t0\n頻出\t1\t0\t0\t0\t0\t0\t0\t1\t0\n部\t1\t0\t0\t1\t0\t0\t0\t0\t0\n併用\t1\t0\t0\t0\t0\t0\t0\t1\t0\n保存\t1\t0\t0\t0\t0\t1\t0\t0\t0\n歩\t1\t0\t0\t0\t0\t1\t0\t0\t0\n簿\t1\t0\t0\t1\t0\t0\t0\t0\t0\n報告\t1\t0\t0\t0\t0\t0\t0\t1\t0\n僕\t1\t0\t0\t0\t0\t0\t0\t1\t0\n本\t1\t0\t0\t0\t0\t1\t0\t0\t0\n本気\t1\t0\t0\t0\t0\t0\t0\t1\t0\n本国\t1\t0\t0\t1\t0\t0\t0\t0\t0\n本田\t1\t0\t0\t0\t0\t0\t1\t0\t0\n枚\t1\t0\t0\t0\t0\t1\t0\t0\t0\n目\t1\t0\t0\t0\t0\t1\t0\t0\t0\n佑\t1\t0\t0\t0\t0\t0\t1\t0\t0\n有効\t1\t0\t0\t0\t0\t1\t0\t0\t0\n擁護\t1\t0\t0\t1\t0\t0\t0\t0\t0\n曜一\t1\t0\t0\t0\t0\t0\t1\t0\t0\n要約\t2\t0\t0\t0\t0\t2\t0\t0\t0\n抑圧\t1\t0\t0\t1\t0\t0\t0\t0\t0\n理由\t1\t0\t0\t1\t0\t0\t0\t0\t0\n朗\t1\t0\t0\t0\t0\t0\t1\t0\t0\n" }
  it 'should create category_map' do
    expect(subject).to eq expected
  end
end
