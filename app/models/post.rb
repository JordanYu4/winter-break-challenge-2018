class Post < ApplicationRecord
	self.per_page = 15

	validates :author, presence: true, length: {maximum: 50}
    validates :sharing_content, presence: true
    before_validation :strip_whitespace
    before_validation :force_author

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" },
	:url  => ":s3_domain_url",
    :s3_region => "us-east-1",
    :s3_host_name => ENV["S3_HOST_NAME"],
    :path => "public/avatars/:id/:style_:basename.:extension",
    :storage => :fog,
    :fog_credentials => {
        provider: 'AWS',
        aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
        aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
    },
    fog_directory: ENV["FOG_DIRECTORY"]

    has_attached_file :video, styles: {:thumb => ["711x400>", :jpg]},
    :processors => [:transcoder],
    :url  => ":s3_domain_url",
    :s3_region => "us-east-1",
    :s3_host_name => ENV["S3_HOST_NAME"],
    :path => "public/videos/:id/:style_:basename.:extension",
    :storage => :fog,
    :fog_credentials => {
        provider: 'AWS',
        aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
        aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
    },
    fog_directory: ENV["FOG_DIRECTORY"]

    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    validates_attachment_content_type :video, content_type: /\Avideo\/.*\z/

    
    def is_type_of_video?
        video.content_type =~ %r(video)
    end

    def is_type_of_image?
        avatar.content_type =~ %r(image)
    end

    private
    def strip_whitespace
        self.author = self.author.strip unless self.author.nil?
    end

    def force_author
        if self.author == "Kenny Kao"
            self.author = "Kenneth Kao"
        end
    end

end
