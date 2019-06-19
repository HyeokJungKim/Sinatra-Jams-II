class Instrument < ActiveRecord::Base
    has_many :artistinstruments
    has_many :artists, through: :artistinstruments
end