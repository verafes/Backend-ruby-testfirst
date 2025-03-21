# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
#

require "pig_latin"

describe "#translate" do

  it "translates a word beginning with a vowel" do
    s = translate("apple")
    expect(s).to eq("appleay")
  end

  it "translates a word beginning with a consonant" do
    s = translate("banana")
    expect(s).to eq("ananabay")
  end

  it "translates a word beginning with two consonants" do
    s = translate("cherry")
    expect(s).to eq("errychay")
  end

  it "translates two words" do
    s = translate("eat pie")
    expect(s).to eq("eatay iepay")
  end

  it "translates a word beginning with three consonants" do
    expect(translate("three")).to eq("eethray")
  end

  it "counts 'sch' as a single phoneme" do
    s = translate("school")
    expect(s).to eq("oolschay")
  end

  it "counts 'qu' as a single phoneme" do
    s = translate("quiet")
    expect(s).to eq("ietquay")
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate("square")
    expect(s).to eq("aresquay")
  end

  it "translates many words" do
    s = translate("the quick brown fox")
    expect(s).to eq("ethay ickquay ownbray oxfay")
  end

  it "translates two words beginning with a single consonant" do
      s = translate("hello world")
      expect(s).to eq("ellohay orldway")
  end

  it "translates many words and punctuation" do
    s = translate("the quick fox, yet the brown fox!")
    expect(s).to eq("ethay ickquay oxfay, etyay ethay ownbray oxfay!")
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)

  it "retain capitalization for a single capitalized word" do
    s = translate("Apple")
    expect(s).to eq("Appleay")
  end

  it "retain capitalization for multiple capitalized words including 'little words'" do
    s = translate("A Green Apple")
    expect(s).to eq("Aay Eengray Appleay")
  end

  # * retain the punctuation from the original phrase
    it "retains punctuation at the end of a word" do
      s = translate("hello!")
      expect(s).to eq("ellohay!")
    end

    it "retain capitalization and punctuation for multiple capitalized words" do
        s = translate("The Quick Fox, not the Queen Guest!")
        expect(s).to eq("Ethay Ickquay Oxfay, otnay ethay Eenquay Uestgay!")
    end

  it "retains capitalization and punctuation in the middle and at the end of phrase" do
    expect(translate("Hello, world!")).to eq("Ellohay, orldway!")
  end
end
