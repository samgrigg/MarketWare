class User < ActiveRecord::Base
	validates_presence_of		:name, :email
	validates_format_of     :email,
													:allow_blank	=> true,
	                        :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
	                        :message    => "is in a format I don't recognize"
	
  def self.columns()
    @columns ||= []
  end
  
  def self.column(name, sql_type = nil, default = nil, null = true)
    columns << ActiveRecord::ConnectionAdapters::Column.new(name.to_s, default, sql_type.to_s, null)
  end
  
  column :name, :string
  column :company, :string
  column :phone, :string
  column :email, :string
end
