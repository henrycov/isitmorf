class Person < ApplicationRecord
    def mvoteup
        update(mvote: mvote + 1)
    end
    def fvoteup
        update(fvote: fvote + 1)
    end
end
