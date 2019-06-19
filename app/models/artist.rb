class Artist < ActiveRecord::Base
    has_many :artistinstruments
    has_many :instruments, through: :artistinstruments
end
