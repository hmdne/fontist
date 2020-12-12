require "spec_helper"

RSpec.describe Fontist::Formulas::MsTruetypeFont do
  describe "initializing" do
    it "builds the data dictionary" do
      formula = Fontist::Formulas::MsTruetypeFont.instance

      expect(formula.fonts.count).to eq(4)
      expect(formula.fonts.first[:name]).to eq("Arial")
    end
  end

  describe "installation" do
    context "with valid licence agreement" do
      it "installs the valid fonts", if: Gem.win_platform? do
        name = "Arial"
        confirmation = "yes"

        stub_fontist_path_to_temp_path
        paths = Fontist::Formulas::MsTruetypeFont.fetch_font(
          name, confirmation: confirmation
        )

        expect(Fontist::Font.find(name)).not_to be_empty
        expect(paths.first).to include("fonts/#{name}.ttf")
      end
    end
  end
end
