require_relative "../sort"

describe "Sort Program" do
    context "In normal scenario" do
        it "should return sorted result" do
            expect(sort([1,2,3])).to eq [1,2,3]
            expect(sort([3,2,1])).to eq [1,2,3]
        end
    end
end
