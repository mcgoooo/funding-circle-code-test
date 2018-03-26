require "terminal_table_generator"

describe TerminalTableGenerator do
  describe ".table" do
    context "given a primetable with ten nbumbers" do
      subject { TerminalTableGenerator.new(10).table }

      it "should have one header" do
        expect(subject.headings.length).to eql(1)
      end

      it "should return the header correctly" do
        output = "      |  2   3   5    7    11   13   17   19   23   29  "
        expect(subject.headings[0].render).to eql(output)
      end

      it "should have ten rows" do
        expect(subject.rows.length).to eql(10)
      end

      it "should return the first row correctly" do
        output = " 2    |  4   6   10   14   22   26   34   38   46   58  "
        expect(subject.rows[0].render).to eql(output)
      end

      it "should return the last row correctly" do
        output = " 29   |  58  87  145  203  319  377  493  551  667  841 "
        expect(subject.rows[9].render).to eql(output)
      end

    end
  end
end
