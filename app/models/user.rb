class User < ActiveRecord::Base
	validates_format_of     :email,
	                        :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
	                        :message    => "I don't recognize the format of your email."
	
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
