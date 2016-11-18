class User < ApplicationRecord
  has_many :bookings
  has_many :wishes
  has_one :nest, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # validates_presence_of :last_name, :message => "cannot be empty"
  # validates_presence_of :first_name, :message => "cannot be empty"

  validates :website, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it have to be an url" }
  validates :cv, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it have to be an url" }
  validates :song, :allow_blank => true, format: { :with => /(?:https?:\/\/)?(?:(?:(?:www\.?)?youtube\.com(?:\/(?:(?:watch\?.*?(v=[^&\s]+).*)|(?:v(\/.*))|(channel\/.+)|(?:user\/(.+))|(?:results\?(search_query=.+))))?)|(?:youtu\.be(\/.*)?))/i, message: "it have to be a youtube link" }

devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable

  def song_youtube_id
    if song != "" && song != nil
      song.match(/(?:https?:\/\/)?(?:www\.)?youtu\.?be(?:\.com)?\/?.*(?:watch|embed)?(?:.*v=|v\/|\/)([\w\-_]+)/i)[1]
    end
  end
end

